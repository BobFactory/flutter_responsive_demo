import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_demo/components/header.dart';
import 'package:responsive_demo/components/responsive_scaffold.dart';
import 'package:responsive_demo/resources/colors.dart';
import 'package:responsive_demo/utils/responsive_utils.dart';
import 'package:responsive_demo/utils/size_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var count = 1;
    var horizontalPadding = 16.0;

    if (context.isDesktop()) {
      count = 3;
      horizontalPadding = 16;
    } else if (context.isTablet()) {
      count = 2;
      horizontalPadding = context.widthPercent(5);
    } else {
      count = 1;
      horizontalPadding = 16;
    }

    return ResponsiveScaffoldWithSideBar(
      body: Column(children: [
        const ScreenHeader(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: horizontalPadding
                  ),
                  crossAxisCount: count,
                  children:
                      List.generate(10, (index) => _GridItem(index: index)),
                ),
              ),
              if (context.isDesktop()) const EndBanner()
            ],
          ),
        ),
      ]),
    );
  }
}

class EndBanner extends StatelessWidget {
  const EndBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 24, 16, 0),
      child: Container(
        padding: const EdgeInsets.all(22),
        height: context.heightPercent(50),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [primary, primary.withAlpha(200)]),
        ),
        child: const Column(
          children: [
            Text(
              "Welcome to responsive demo",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  height: 1),
            ),
            SizedBox(height: 32),
            Text(
              "This is a demo that shows  how to handle responsive design implementation in flutter. We need to learn how to render complex responsive layouts in flutter by looking at differnt web  startegies.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _GridItem extends StatelessWidget {
  const _GridItem({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 500,
        key: ValueKey(index),
        decoration: BoxDecoration(
          color: tertiary,
            // gradient:
            //     LinearGradient(colors: [tertiary, tertiary.withAlpha(200)]),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text("Item $index"),
        ),
      ),
    );
  }
}
