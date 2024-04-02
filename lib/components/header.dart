import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello Bawender Yandra 👋🏻",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white
            ),
          ),

           Text(
            "Excepteur anim magna sint consequat ullamco dolor nulla occaecat minim esse sint voluptate anim. Dolore ex elit culpa mollit aliquip id. Ex labore officia quis labore excepteur. ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w200,
              color: Colors.white70
            ),
          ),
        ],
      ),
    );
  }
}
