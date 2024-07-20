import 'package:flutter/material.dart';
import 'package:test1/screens/page2.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageOne'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PageTwo(),
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
