import 'package:flutter/material.dart';
import 'package:test1/screens/page3.dart';
import 'package:test1/widgets/appbarwidget.dart';

class PageTwo extends StatefulWidget {
  final String firstName;
  const PageTwo({super.key, required this.firstName});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void dispose() {
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'PageTwo',
        icon: Icons.arrow_right_alt,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PageThree(
                firstName: widget.firstName,
                lastName: _lastNameController.text,
              ),
            ),
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
