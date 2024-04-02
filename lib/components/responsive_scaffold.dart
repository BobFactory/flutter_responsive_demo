import 'package:flutter/material.dart';
import 'package:responsive_demo/components/sidebar.dart';
import 'package:responsive_demo/resources/colors.dart';
import 'package:responsive_demo/utils/responsive_utils.dart';

class ResponsiveScaffoldWithSideBar extends StatelessWidget {
  const ResponsiveScaffoldWithSideBar({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar is necessary only for the drawer to work.
      appBar: context.isMobile()
          ? AppBar(
              title: const Text('Responsive Demo'),
              centerTitle: false,
            )
          : null,
      drawer: context.isMobile()
          ? Drawer(
              backgroundColor: secodnary,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                        "Responsive Demo",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.1,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  SideBarListTile(
                      icon: Icons.dashboard,
                      title: 'Dashboard',
                      isSelected: true,
                      onTap: () {}),
                  SideBarListTile(
                      icon: Icons.money_off,
                      title: 'Expenses',
                      isSelected: false,
                      onTap: () {}),
                  SideBarListTile(
                      icon: Icons.money,
                      title: 'Income',
                      isSelected: false,
                      onTap: () {}),
                  SideBarListTile(
                      icon: Icons.bar_chart,
                      title: 'Stats',
                      isSelected: false,
                      onTap: () {}),
                ],
              ),
            )
          : null,
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SideBar(),
          Expanded(child: (body)),
        ],
      ),
    );
  }
}
