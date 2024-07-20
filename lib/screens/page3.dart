import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/provider/name_provider.dart';
import 'package:test1/widgets/appbar_widget.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<NameProvider>(context);
    String fullName = '${nameProvider.firstName} ${nameProvider.lastName}';

    return Scaffold(
      appBar: AppBarWidget(
        title: 'PageThree',
        icon: Icons.arrow_right_alt,
        onPressed: () {
          Navigator.popUntil(context, ModalRoute.withName('/pageOne'));
        },
      ),
      body: Center(
        child: Text('Full Name: $fullName'),
      ),
    );
  }
}
