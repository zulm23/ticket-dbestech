import 'package:dbestech/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppTicketTab extends StatelessWidget {
  final String text1;
  final String text2;
  final Size size;

  const AppTicketTab({
    Key? key,
    required this.size,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppLayout.getHeigth(50),
          ),
          color: Colors.grey.shade400,
        ),
        child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigth(7),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeigth(50)),
                  ),
                  color: Colors.white,
                ),
                child: Center(child: Text(text1)),
              ),
              Container(
                width: size.width * .44,
                padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeigth(7),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeigth(50)),
                  ),
                  color: Colors.transparent,
                ),
                child: Center(child: Text(text2)),
              ),
            ]),
      ),
    );
  }
}
