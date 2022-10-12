import 'package:dbestech/widget/app_ticket_tab.dart';
import 'package:dbestech/widget/double_text.dart';
import 'package:dbestech/widget/icon_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeigth(20),
          ),
          children: [
            Gap(AppLayout.getHeigth(40)),
            Text(
              'What are you \nyou looking for?',
              style: Style.headLineStyle1
                  .copyWith(fontSize: AppLayout.getHeigth(35)),
            ),
            Gap(AppLayout.getHeigth(20)),
            AppTicketTab(
              size: size,
              text1: 'Airline Tickets',
              text2: 'Hotels',
            ),
            Gap(AppLayout.getHeigth(25)),
            const AppIconText(
              text: 'Departure',
              icon: Icons.flight_takeoff_rounded,
            ),
            Gap(AppLayout.getHeigth(15)),
            const AppIconText(
              text: 'Arrival',
              icon: Icons.flight_land_rounded,
            ),
            Gap(AppLayout.getHeigth(24)),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.blue),
              child: Center(
                child: Text(
                  'Find Tickets',
                  style: Style.textStyle
                      .copyWith(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Gap(AppLayout.getHeigth(40)),
            const AppDoubleTextWidget(
              bigText: 'Upcoming Flights',
              smallText: 'view all',
              ontap: null,
            ),
            Gap(AppLayout.getHeigth(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeigth(435),
                  width: size.width * .42,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeigth(20)),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey, spreadRadius: 1, blurRadius: 5)
                      ]),
                  child: Column(children: [
                    Container(
                      height: AppLayout.getHeigth(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeigth(12)),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/sit.jpg'),
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeigth(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance",
                      style: Style.headLineStyle2,
                    )
                  ]),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * .44,
                          height: AppLayout.getHeigth(210),
                          decoration: BoxDecoration(
                              color: const Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(18)),
                          padding: EdgeInsets.symmetric(
                              horizontal: AppLayout.getHeigth(15),
                              vertical: AppLayout.getHeigth(15)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount \nfor survey",
                                  style: Style.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(AppLayout.getHeigth(10)),
                                Text(
                                  "Take the surveyy abaout our services and get discount",
                                  style: Style.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ]),
                        ),
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(
                              AppLayout.getHeigth(30),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 18,
                                  color: const Color(0xFF189999),
                                ),
                                color: Colors.transparent),
                          ),
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeigth(15)),
                    Container(
                      width: size.width * .44,
                      padding: const EdgeInsets.all(15),
                      height: AppLayout.getHeigth(210),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(18)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Take Love",
                              style: Style.headLineStyle2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Gap(AppLayout.getHeigth(15)),
                            RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                  text: ':)',
                                  style: TextStyle(fontSize: 38),
                                ),
                                TextSpan(
                                  text: ':)',
                                  style: TextStyle(fontSize: 50),
                                ),
                                TextSpan(
                                  text: ':)',
                                  style: TextStyle(fontSize: 38),
                                ),
                              ]),
                            ),
                          ]),
                    ),
                  ],
                ),
              ],
            )
          ]),
    );
  }
}
