import 'package:flutter/material.dart';
import 'package:test1/screens/page3.dart';
import 'package:test1/widgets/appbarwidget.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'PageTwo',
        icon: Icons.arrow_right,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageThree(),
            ),
          );
        },
      ),
    );
  }
}

// class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final IconData icon;
//   final VoidCallback onPressed;

//   const AppBarWidget({
//     super.key,
//     required this.title,
//     required this.icon,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(title),
//       actions: [
//         IconButton(
//           onPressed: onPressed,
//           icon: Icon(icon),
//         ),
//       ],
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
