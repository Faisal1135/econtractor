import 'package:econtractor/pages/search_page.dart';
import 'package:econtractor/widgets/productItem.dart';
import 'package:econtractor/widgets/searchWidget.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textThm = Theme.of(context).textTheme;
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        InkWell(
          child: SearchWidget(),
          onTap: () => Navigator.pushNamed(context, SearchPage.routeName),
        ),
        Container(
          child: Text(
            'Services',
            style: textThm.bodyText1.copyWith(
                fontSize: 19, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
          padding: EdgeInsets.all(10),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 2,
            primary: false,
            shrinkWrap: true,
            children: List.generate(6, (index) => Placeholder()),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Image.asset(
          "assets/images/house_key.jpg",
          fit: BoxFit.cover,
          height: 150,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Text(
            'New Product',
            style: textThm.bodyText1.copyWith(
                fontSize: 19, fontWeight: FontWeight.w700, letterSpacing: 1.5),
          ),
          padding: EdgeInsets.all(10),
        ),
        Padding(
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
        ),
      ],
    );
  }
}
