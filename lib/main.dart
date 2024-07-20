import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/provider/name_provider.dart';
import 'package:test1/screens/page1.dart';
import 'package:test1/screens/page2.dart';
import 'package:test1/screens/page3.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => NameProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/pageOne',
      routes: {
        '/pageOne': (context) => const PageOne(),
        '/pageTwo': (context) => const PageTwo(),
        '/pageThree': (context) => const PageThree(),
      },
      // home: PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}
