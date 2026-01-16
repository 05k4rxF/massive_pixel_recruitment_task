import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:massive_pixel_recruitment_task/domain/entities/product.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/extensions/box_constraints_extensions.dart';
import '../bloc/product_list/product_list_bloc.dart';
import '../bloc/product_list/product_list_event.dart';
import '../bloc/product_list/product_list_state.dart';
import '../widgets/product_card.dart';
import '../widgets/product_list_item.dart';
import '../widgets/loading_indicator.dart';
import '../widgets/error_message.dart';
import 'product_details_screen.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<ProductListBloc>().add(const ProductListEvent.loadProducts());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search products...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(icon: const Icon(Icons.clear), onPressed: _onClearSearchField)
                    : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onChanged: _onSearchChanged,
            ),
          ),
          Expanded(
            child: BlocBuilder<ProductListBloc, ProductListState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox.shrink(),
                  loading: () => const LoadingIndicator(),
                  error: (message) => ErrorMessage(
                    message: message,
                    onRetry: () {
                      context.read<ProductListBloc>().add(const ProductListEvent.loadProducts());
                    },
                  ),
                  loaded: (products, filteredProducts, searchQuery) {
                    if (filteredProducts.isEmpty) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.search_off, size: 64, color: Colors.grey[400]),
                              const SizedBox(height: 16),
                              Text(
                                searchQuery != null && searchQuery.isNotEmpty
                                    ? 'No products found for "$searchQuery"'
                                    : 'No products available',
                                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    return LayoutBuilder(
                      builder: (context, constraints) {
                        return RefreshIndicator(
                          onRefresh: _onRefresh,
                          child: constraints.isDesktop
                              ? GridView.builder(
                                  padding: const EdgeInsets.all(AppConstants.gridSpacing),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: AppConstants.gridCrossAxisCount,
                                    childAspectRatio: AppConstants.gridChildAspectRatio,
                                    crossAxisSpacing: AppConstants.gridSpacing,
                                    mainAxisSpacing: AppConstants.gridSpacing,
                                  ),
                                  itemCount: filteredProducts.length,
                                  itemBuilder: (context, index) {
                                    return ProductCard(
                                      product: filteredProducts[index],
                                      onTap: () => _navigateToDetails(filteredProducts[index]),
                                    );
                                  },
                                )
                              : ListView.builder(
                                  padding: const EdgeInsets.all(AppConstants.gridSpacing),
                                  itemCount: filteredProducts.length,
                                  itemBuilder: (context, index) {
                                    return ProductListItem(
                                      product: filteredProducts[index],
                                      onTap: () => _navigateToDetails(filteredProducts[index]),
                                    );
                                  },
                                ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onClearSearchField() {
    _searchController.clear();
    _onSearchChanged('');
  }

  void _onSearchChanged(String query) {
    context.read<ProductListBloc>().add(ProductListEvent.searchProducts(query));
  }

  Future<void> _onRefresh() async {
    context.read<ProductListBloc>().add(const ProductListEvent.refreshProducts());
  }

  void _navigateToDetails(Product product) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen(product: product)));
  }
}
