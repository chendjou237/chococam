import 'package:auto_route/auto_route.dart';
import 'package:chococam/app/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class VendorScreen extends StatelessWidget {
  const VendorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AutoTabsScaffold(
      routes: const [
        VendorHomeRoute(),
        VendorActivityRoute(),
        VendorSalesRoute()
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_iphone),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sell),
              label: 'ventes',
            ),
          ],
        );
      },
    ));
  }
}
