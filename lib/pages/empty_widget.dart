import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String title;

  const EmptyWidget({Key key, @required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(title),
      ),
    );
  }
}
