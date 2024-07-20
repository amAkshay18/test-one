import 'package:flutter/material.dart';
import 'package:test1/screens/page1.dart';
import 'package:test1/widgets/appbarwidget.dart';

class PageThree extends StatelessWidget {
  final String firstName;
  final String lastName;
  const PageThree({super.key, required this.firstName, required this.lastName});

  @override
  Widget build(BuildContext context) {
    String fullName = '$firstName $lastName';
    return Scaffold(
      appBar: AppBarWidget(
        title: 'PageThree',
        icon: Icons.arrow_right_alt,
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const PageOne(),
            ),
            (route) => false,
          );
        },
      ),
      body: Center(
        child: Text('Full Name: $fullName'),
      ),
    );
  }
}
