import 'package:dbestech/utils/app_layout.dart';
import 'package:dbestech/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeigth(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Style.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeigth(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/${hotel['image']}'),
              ),
            ),
          ),
          const Gap(10),
          Text(
            '${hotel['place']}',
            style: Style.headLineStyle2.copyWith(color: Style.kakiColor),
          ),
          const Gap(5),
          Text(
            '${hotel['destination']}',
            style: Style.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$ ${hotel['price']}/nigth',
            style: Style.headLineStyle1.copyWith(color: Style.kakiColor),
          ),
          // const Gap(8),
        ],
      ),
    );
  }
}
