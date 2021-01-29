import 'package:econtractor/widgets/cartItem.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        ...List.generate(3, (index) => CartItem())
      ],
    );
  }
}
