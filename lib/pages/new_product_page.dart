import 'package:flutter/material.dart';

class NewProductPage extends StatefulWidget {
  static const String routeName = '/newProduct';
  const NewProductPage({super.key});

  @override
  State<NewProductPage> createState() => _NewProductPageState();
}

class _NewProductPageState extends State<NewProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Product'),),
    );
  }
}
