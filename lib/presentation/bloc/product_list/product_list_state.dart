import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/product.dart';

part 'product_list_state.freezed.dart';

@freezed
class ProductListState with _$ProductListState {
  const factory ProductListState.initial() = ProductListInitial;
  const factory ProductListState.loading() = ProductListLoading;
  const factory ProductListState.loaded({
    required List<Product> products,
    required List<Product> filteredProducts,
    String? searchQuery,
  }) = ProductListLoaded;
  const factory ProductListState.error(String message) = ProductListError;
}
