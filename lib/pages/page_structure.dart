import 'dart:math' show pi;

import 'package:econtractor/const_and_final.dart';
import 'package:econtractor/riverpod/page.dart';
import 'package:econtractor/widgets/drawer.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          width: size.width / 2,
          child: SvgPicture.asset(
            "assets/icons/logo.svg",
          ),
        ),
        leading: Transform.rotate(
          angle: angle,
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              ZoomDrawer.of(context).toggle();
            },
          ),
        ),
      ),
      body: widgetList.elementAt(_currentPage),
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
