import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/ShoppingListItem.dart';

class ShoppingList extends StatefulWidget {
  const ShoppingList({required this.products, super.key});

  final List<Product> products;

  @override
  State<ShoppingList> createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  final _shoppingCart = <Product>{};

  void _handleCartChanged(Product product, bool inCart) {
    setState(() {
      inCart ? _shoppingCart.remove(product) : _shoppingCart.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Shopping Cart')),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: widget.products.map((product) {
            return ShoppingListItem(
                product: product,
                inCart: _shoppingCart.contains(product),
                onCartChanged: _handleCartChanged);
          }).toList(),
        ));
  }
}
