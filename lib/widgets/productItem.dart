import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                "assets/images/brick.png",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Khokhon Traders ',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
            ),
            Text(
              'Bricks Cemets',
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: GoogleFonts.poppins(fontSize: 13),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
