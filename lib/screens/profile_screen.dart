import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.all(AppLayout.getHeigth(20)),
        children: [
          Gap(AppLayout.getHeigth(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeigth(95),
                width: AppLayout.getWidth(95),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'))),
              ),
              Gap(AppLayout.getHeigth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Style.headLineStyle1),
                  Gap(AppLayout.getHeigth(2)),
                  Text("Book Tickets",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  Gap(AppLayout.getHeigth(8)),
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFFFEf4f3)),
                    child: Row(children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_filled,
                          color: Colors.green[300],
                        ),
                      ),
                      Gap(AppLayout.getHeigth(8)),
                      const Text(
                        "Premium Status",
                        style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600),
                      )
                    ]),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      debugPrint('on tap');
                    },
                    child: Text(
                      'Edit',
                      style: Style.textStyle.copyWith(
                          color: Style.primaryColor,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeigth(8)),
          Divider(color: Colors.grey[350]),
          Gap(AppLayout.getHeigth(8)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeigth(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Style.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeigth(18)),
                ),
              ),
              Positioned(
                right: -45,
                bottom: -20,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeigth(75)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xFF264CD2), width: 32)),
                ),
              ),
              Positioned(
                left: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeigth(30)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: const Color(0xFF264CD2), width: 18)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeigth(15),
                    vertical: AppLayout.getHeigth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Style.primaryColor,
                        size: 28,
                      ),
                    ),
                    Gap(AppLayout.getHeigth(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You'v got a new award",
                          style: Style.headLineStyle2.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Text(
                          "you have 95 fligth in a year",
                          style: Style.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white.withOpacity(.9),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(AppLayout.getHeigth(25)),
          Text('Accumulated miles', style: Style.headLineStyle2),
          Gap(AppLayout.getHeigth(15)),
          Container(
            margin: EdgeInsets.symmetric(vertical: AppLayout.getHeigth(15)),
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeigth(15),
                vertical: AppLayout.getHeigth(20)),
            decoration: BoxDecoration(
                color: Style.bgColor,
                boxShadow: const [
                  BoxShadow(blurRadius: 10, color: Colors.grey, spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(AppLayout.getHeigth(18))),
            child: Column(
              children: [
                Text(
                  '192802',
                  style: TextStyle(
                      fontSize: 45,
                      color: Style.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeigth(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles Accured',
                      style: Style.headLineStyle4.copyWith(fontSize: 16),
                    ),
                    Text('23 may 2021',
                        style: Style.headLineStyle4.copyWith(fontSize: 16)),
                  ],
                ),
                Gap(AppLayout.getHeigth(20)),
                const RowData(
                  bigText1: '23 042',
                  bigText2: 'Airlines CO',
                  smallText1: 'Miles',
                  smallText2: 'Received from',
                ),
                Gap(AppLayout.getHeigth(20)),
                const RowData(
                  bigText1: '24',
                  bigText2: 'McDonal\'s',
                  smallText1: 'Miles',
                  smallText2: 'Received from',
                ),
                Gap(AppLayout.getHeigth(20)),
                const RowData(
                  bigText1: '52 340',
                  bigText2: 'Exuma',
                  smallText1: 'Miles',
                  smallText2: 'Received from',
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => debugPrint('How to get more miles ?'),
            child: Center(
              child: Text(
                "How to get more miles",
                style: Style.textStyle.copyWith(
                    color: Style.primaryColor, fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowData extends StatelessWidget {
  final String bigText1;
  final String bigText2;
  final String smallText1;
  final String smallText2;

  const RowData({
    Key? key,
    required this.bigText1,
    required this.bigText2,
    required this.smallText1,
    required this.smallText2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bigText1,
              style: Style.headLineStyle3
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Gap(AppLayout.getHeigth(2)),
            Text(
              smallText1,
              style: Style.headLineStyle4.copyWith(fontSize: 16),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              bigText2,
              style: Style.headLineStyle3
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Gap(AppLayout.getHeigth(2)),
            Text(
              smallText2,
              style: Style.headLineStyle4.copyWith(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
