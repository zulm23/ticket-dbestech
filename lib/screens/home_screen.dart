import 'package:dbestech/widget/double_text.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_info_list.dart';
import '../utils/app_styles.dart';
import 'hotel_screen.dart';
import 'ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Style.headLineStyle4,
                        ),
                        const Gap(5),
                        Text(
                          'Zulmadi',
                          style: Style.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/img_1.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Style.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                const AppDoubleTextWidget(
                  bigText: 'Upcoming Flights',
                  smallText: 'view all',
                  ontap: null,
                ),
                const Gap(15),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children:
                          ticketList.map((e) => TicketView(ticket: e)).toList(),
                    )),
                const Gap(15),
                const AppDoubleTextWidget(
                  bigText: 'Hotels',
                  smallText: 'view all',
                  ontap: null,
                ),
                const Gap(15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children:
                        hotelList.map((e) => HotelScreen(hotel: e)).toList(),
                  ),
                ),
                const Gap(15),
                Container(
                  // height: 300,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
