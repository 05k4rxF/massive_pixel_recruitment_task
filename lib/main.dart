import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/injection/injection_container.dart';
import 'presentation/bloc/product_list/product_list_bloc.dart';
import 'presentation/screens/product_list_screen.dart';

void main() {
  setupDependencyInjection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Products App',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true),
      home: BlocProvider(create: (context) => getIt<ProductListBloc>(), child: const ProductListScreen()),
    );
  }
}
