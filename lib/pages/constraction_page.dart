import 'package:econtractor/widgets/product_grid.dart';
import 'package:econtractor/widgets/searchWidget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ContractionPage extends StatelessWidget {
  static const routeName = 'constraction-page';
  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return ListView(
      children: [
        SearchWidget(),
        SizedBox(
          height: 20,
        ),
        GFCard(
          boxFit: BoxFit.cover,
          imageOverlay: AssetImage('assets/images/house_key.jpg'),
          title: GFListTile(
            title: Text(
              'Constraction \n Materials',
              style: txtTheme.bodyText1.copyWith(
                fontSize: 18,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GFButton(
              shape: GFButtonShape.pills,
              color: Colors.white,
              buttonBoxShadow: true,
              onPressed: null,
              child: Text('Brick'),
            ),
            GFButton(
              shape: GFButtonShape.pills,
              color: Colors.white,
              buttonBoxShadow: true,
              onPressed: null,
              child: Text('Cement'),
            ),
            GFButton(
              shape: GFButtonShape.pills,
              color: Colors.white,
              buttonBoxShadow: true,
              onPressed: null,
              child: Text('Rod'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            'Products',
            style: txtTheme.bodyText1
                .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        ProductGrid(),
      ],
    );
  }
}
