import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListTile(
          leading: Text(
            'Search ...',
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 19,
                ),
          ),
          trailing: Icon(Icons.search),
        ),
      ),
    );
  }
}
