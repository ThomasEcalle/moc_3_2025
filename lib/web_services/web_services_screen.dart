import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:moc_3_2025/web_services/product.dart';

class WebServicesScreen extends StatefulWidget {
  const WebServicesScreen({super.key});

  @override
  State<WebServicesScreen> createState() => _WebServicesScreenState();
}

class _WebServicesScreenState extends State<WebServicesScreen> {
  bool _loading = true;
  final List<Product> _products = [];
  Exception? _error;

  @override
  void initState() {
    super.initState();
    print('Coucou');
    _getProducts();
  }

  void _getProducts() async {
    final dio = Dio(BaseOptions(baseUrl: 'https://dummyjson.com'));

    try {
      final response = await dio.get('/products');
      final products = (response.data['products'] as List).map((json) => Product.fromJson(json)).toList();
      setState(() {
        _loading = false;
        _products.clear();
        _products.addAll(products);
      });
    } catch (error) {
      setState(() {
        _loading = false;
        _error = Exception();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Services'),
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (_loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      return Center(
        child: Text('Oups, une erreur est survenue'),
      );
    }

    if (_products.isEmpty) {
      return Center(
        child: Text('Liste vide'),
      );
    }

    return ListView.builder(
      itemCount: _products.length,
      itemBuilder: (context, index) {
        final product = _products[index];
        return ListTile(
          title: Text(product.name ?? ''),
        );
      },
    );
  }
}
