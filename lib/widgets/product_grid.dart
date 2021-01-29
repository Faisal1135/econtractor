import 'package:econtractor/widgets/productItem.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        childAspectRatio: 10 / 12,
        primary: false,
        shrinkWrap: true,
        children: List.generate(
          6,
          (index) => ProductItem(),
        ),
      ),
    );
  }
}
