import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_list_event.freezed.dart';

@freezed
class ProductListEvent with _$ProductListEvent {
  const factory ProductListEvent.loadProducts() = LoadProductsEvent;
  const factory ProductListEvent.refreshProducts() = RefreshProductsEvent;
  const factory ProductListEvent.searchProducts(String query) = SearchProductsEvent;
}
