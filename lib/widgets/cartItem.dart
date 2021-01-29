import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),

      // height: 200.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Image.asset(
                    "assets/images/house_key.jpg",
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Product Name",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "(per bag)",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10.0),
                        Text('Tk 60')
                        // SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                width: 0.8,
                color: Colors.black54,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("--- Preswws");
                    },
                    child: Container(
                      child: Text(
                        '-',
                        style: TextStyle(
                          fontSize: 27,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 20.0),
                Expanded(
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          // Container(
          //   child: Text(
          //     "27",
          //     style: TextStyle(
          //       fontSize: 15.0,
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
