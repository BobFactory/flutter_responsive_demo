import 'package:flutter/material.dart';
import 'package:responsive_demo/resources/colors.dart';
import 'package:responsive_demo/utils/responsive_utils.dart';
import 'package:responsive_demo/utils/size_utils.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.isDesktop()) {
      //Desktop view
      return _SideBarDesktopView();
    } else if (context.isTablet()) {
      //Tablet view
      return _SideBarTabletView();
    } else {
      //No UI is needed for mobile view since a drawer is used
      return Container();
    }
  }
}

class _SideBarTabletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.widthPercent(10),
        color: secodnary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 100),
          const Divider(),
          const SizedBox(height: 60),
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
        ]));
  }
}

class _SideBarDesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthPercent(20),
      color: secodnary,
      child: Column(
        children: [
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
          const Divider(),
          const SizedBox(height: 60),
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
    );
  }
}

class SideBarListTile extends StatelessWidget {
  const SideBarListTile(
      {super.key,
      required this.isSelected,
      required this.icon,
      required this.title,
      required this.onTap});

  final bool isSelected;
  final IconData icon;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return context.isDesktop() || context.isMobile()
        ? ListTile(
            leading:
                Icon(icon, color: isSelected ? Colors.white : Colors.white70),
            title: Text(
              title,
              style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white70,
                  fontWeight: FontWeight.w600),
            ),
            onTap: onTap,
          )
        : Padding(
          // Adds bottom spacer to create seperation between list items.  
          padding: const EdgeInsets.only(bottom:8.0),
          child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                    color: isSelected ? Colors.white : Colors.transparent,
                    width: 2),
              ),
              child:
                  Icon(icon, color: isSelected ? Colors.white : Colors.white70),
            ),
        );
  }
}
