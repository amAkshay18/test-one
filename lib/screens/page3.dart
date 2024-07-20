import 'package:flutter/material.dart';
import 'package:test1/screens/page1.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageThree'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageOne(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
