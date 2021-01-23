import 'package:econtractor/riverpod/page.dart';
import 'package:flutter_riverpod/all.dart';

import './menu_page.dart';
import './page_structure.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomeScreen extends ConsumerWidget {
  static const routeName = "home-screen";
  static List<MenuItem> mainMenu = [
    MenuItem("Profile", Icons.people, 0),
    MenuItem("Order", Icons.card_giftcard, 1),
    MenuItem("MyCart", Icons.shopping_bag, 2),
    MenuItem("Helpline", Icons.help, 3),
    MenuItem("Payment", Icons.payment, 4),
  ];

  final _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    void _updatePage(index) {
      context.read(currentPageProvider).changeIndex(index);

      _drawerController.toggle();
    }

    final _currentPage = watch(currentPageProvider.state);
    return ZoomDrawer(
      controller: _drawerController,
      menuScreen: MenuScreen(
        HomeScreen.mainMenu,
        callback: _updatePage,
        current: _currentPage,
      ),
      mainScreen: MainScreen(),
      borderRadius: 24.0,
//      showShadow: true,
      angle: 0.0,
      slideWidth:
          MediaQuery.of(context).size.width * (ZoomDrawer.isRTL() ? .45 : 0.65),
      // openCurve: Curves.fastOutSlowIn,
      // closeCurve: Curves.bounceIn,
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final rtl = ZoomDrawer.isRTL();
    return ValueListenableBuilder<DrawerState>(
      valueListenable: ZoomDrawer.of(context).stateNotifier,
      builder: (context, state, child) {
        return AbsorbPointer(
          absorbing: state != DrawerState.closed,
          child: child,
        );
      },
      child: GestureDetector(
        child: PageStructure(),
        onPanUpdate: (details) {
          if (details.delta.dx < 6 && !rtl || details.delta.dx < -6 && rtl) {
            ZoomDrawer.of(context).toggle();
          }
        },
      ),
    );
  }
}
