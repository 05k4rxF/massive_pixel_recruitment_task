import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/error/failures.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/usecases/get_products.dart';
import 'product_list_event.dart';
import 'product_list_state.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final GetProducts getProducts;

  ProductListBloc({required this.getProducts}) : super(const ProductListState.initial()) {
    on<ProductListEvent>((event, emit) async {
      await event.when(
        loadProducts: () async => _onLoadProducts(emit),
        refreshProducts: () async => _onRefreshProducts(emit),
        searchProducts: (query) async => _onSearchProducts(query, emit),
      );
    });
  }

  Future<void> _onLoadProducts(Emitter<ProductListState> emit) async {
    emit(const ProductListState.loading());

    final result = await getProducts();

    result.fold((failure) {
      final message = switch (failure) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
      };
      emit(ProductListState.error(message));
    }, (products) => emit(ProductListState.loaded(products: products, filteredProducts: products, searchQuery: null)));
  }

  Future<void> _onRefreshProducts(Emitter<ProductListState> emit) async {
    final result = await getProducts();

    result.fold(
      (failure) {
        final message = switch (failure) {
          ServerFailure(:final message) => message,
          NetworkFailure(:final message) => message,
        };
        emit(ProductListState.error(message));
      },
      (products) {
        state.maybeWhen(
          loaded: (currentProducts, filteredProducts, searchQuery) {
            final filtered = _filterProducts(products, searchQuery);
            emit(ProductListState.loaded(products: products, filteredProducts: filtered, searchQuery: searchQuery));
          },
          orElse: () {
            emit(ProductListState.loaded(products: products, filteredProducts: products, searchQuery: null));
          },
        );
      },
    );
  }

  void _onSearchProducts(String query, Emitter<ProductListState> emit) {
    state.maybeWhen(
      loaded: (currentProducts, filteredProducts, currentQuery) {
        final filtered = _filterProducts(currentProducts, query);
        emit(
          ProductListState.loaded(
            products: currentProducts,
            filteredProducts: filtered,
            searchQuery: query.isEmpty ? null : query,
          ),
        );
      },
      orElse: () {},
    );
  }

  List<Product> _filterProducts(List<Product> products, String? query) {
    if (query == null || query.isEmpty) {
      return products;
    }
    final lowerQuery = query.toLowerCase();
    return products.where((product) => product.title.toLowerCase().contains(lowerQuery)).toList();
  }
}
