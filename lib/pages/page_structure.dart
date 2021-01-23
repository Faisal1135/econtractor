import 'dart:math' show pi;

import 'package:econtractor/riverpod/page.dart';
import 'package:econtractor/widgets/drawer.dart';
import 'package:flutter_riverpod/all.dart';

import './home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageStructure extends ConsumerWidget {
  final String title;
  final Widget child;
  final List<Widget> actions;
  final Color backgroundColor;
  final double elevation;

  const PageStructure({
    Key key,
    this.title,
    this.child,
    this.actions,
    this.backgroundColor,
    this.elevation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final angle = ZoomDrawer.isRTL() ? 180 * pi / 180 : 0.0;
    final _currentPage = context.read(currentPageProvider.state);
    final container = Container(
      color: Colors.grey[300],
      child: Center(
        child: Text(" ${HomeScreen.mainMenu[_currentPage].title}"),
      ),
    );
    final color = Theme.of(context).accentColor;
    final style = TextStyle(color: color);

    return Scaffold(
      appBar: AppBar(
        title: Text('eContractor'),
        leading: Transform.rotate(
          angle: angle,
          child: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              ZoomDrawer.of(context).toggle();
            },
          ),
        ),
      ),
      body: Center(
        child: container,
      ),
    );
  }
}

// PlatformScaffold(
//       backgroundColor: Colors.transparent,
//       appBar: PlatformAppBar(
//         automaticallyImplyLeading: false,
//         android: (_) => MaterialAppBarData(elevation: elevation),
//         title: PlatformText(
//           HomeScreen.mainMenu[_currentPage].title,
//         ),
// leading: Transform.rotate(
//   angle: angle,
//   child: PlatformIconButton(
//     icon: Icon(
//       Icons.menu,
//     ),
//     onPressed: () {
//       ZoomDrawer.of(context).toggle();
//     },
//   ),
// ),
//         trailingActions: actions,
//       ),
//       bottomNavBar: PlatformNavBar(
//         currentIndex: _currentPage,
//         itemChanged: (index) =>
//             Provider.of<MenuProvider>(context, listen: false)
//                 .updateCurrentPage(index),
//         items: HomeScreen.mainMenu
//             .map(
//               (item) => BottomNavigationBarItem(
//                 title: Text(
//                   item.title,
//                   style: style,
//                 ),
//                 icon: Icon(
//                   item.icon,
//                   color: color,
//                 ),
//               ),
//             )
//             .toList(),
//       ),
//       body: kIsWeb
//           ? container
//           : Platform.isAndroid
//               ? container
//               : SafeArea(
//                   child: container,
//                 ),
//     );
//   }
