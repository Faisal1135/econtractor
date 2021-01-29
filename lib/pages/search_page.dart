import 'package:econtractor/pages/constraction_page.dart';
import 'package:econtractor/widgets/productItem.dart';
import 'package:econtractor/widgets/searchWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  static const routeName = 'searchPage';
  @override
  Widget build(BuildContext context) {
    final textThm = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Search',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SearchWidget(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'My Recent Searchs',
              style: textThm.bodyText2
                  .copyWith(fontWeight: FontWeight.w600, letterSpacing: 1.2),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () =>
                Navigator.pushNamed(context, ContractionPage.routeName),
            child: Card(
              elevation: 3,
              child: CheckboxListTile(
                value: true,
                onChanged: (val) {},
                title: Text('Contruction Materials'),
              ),
            ),
          ),
          Card(
            elevation: 3,
            child: ListTile(
              title: Text('Catagory'),
              trailing: Icon(Icons.arrow_right_alt_outlined),
            ),
          ),
          SizedBox(
            height: 20,
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
      ),
    );
  }
}

class FOnnt extends StatefulWidget {
  @override
  _FOnntState createState() => _FOnntState();
}

class _FOnntState extends State<FOnnt> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
