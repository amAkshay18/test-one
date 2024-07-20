import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/provider/name_provider.dart';
import 'package:test1/widgets/appbar_widget.dart';
import 'package:test1/widgets/textfield_widget.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<NameProvider>(context);
    final TextEditingController fistNameController = TextEditingController();

    return Scaffold(
      appBar: AppBarWidget(
        title: 'PageOne',
        icon: Icons.arrow_right_alt,
        onPressed: () {
          nameProvider.setFirstName(fistNameController.text);
          Navigator.pushNamed(context, '/pageTwo');
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFieldWidget(
              controller: fistNameController,
              labelText: 'First Name',
            ),
          ],
        ),
      ),
    );
  }
}
