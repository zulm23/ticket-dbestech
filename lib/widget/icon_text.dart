import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Gap(AppLayout.getWidth(10)),
        Text(
          text,
          style: Style.textStyle,
        )
      ]),
    );
  }
}
