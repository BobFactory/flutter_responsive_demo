import 'package:flutter/material.dart';
import 'package:responsive_demo/components/responsive_scaffold.dart';
import 'package:responsive_demo/utils/responsive_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }


  
  
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffoldWithSideBar(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the Responsive UI Demo',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Resize the window to see the responsiveness in action',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

