import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test1/provider/name_provider.dart';
import 'package:test1/widgets/appbar_widget.dart';
import 'package:test1/widgets/textfield_widget.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<NameProvider>(context);
    final TextEditingController lastNameController = TextEditingController();

    return Scaffold(
      appBar: AppBarWidget(
        title: 'PageTwo',
        icon: Icons.arrow_right_alt,
        onPressed: () {
          nameProvider.setLastName(lastNameController.text);
          Navigator.pushNamed(context, '/pageThree');
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFieldWidget(
              controller: lastNameController,
              labelText: 'Last Name',
            ),
          ],
        ),
      ),
    );
  }
}
