import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class HeaderComponent extends StatelessWidget implements PreferredSizeWidget {
  final String headerText;
  final String? hint;

  const HeaderComponent({Key? key, required this.headerText, this.hint});

  @override
  Size get preferredSize =>
      const Size.fromHeight(200); // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return Container(

        color: primaryColor300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              headerText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              hint!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
