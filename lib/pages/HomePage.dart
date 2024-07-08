import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/core/res/media.dart';
import 'package:ticket_app/core/res/styles/AppStyles.dart';
import 'package:ticket_app/core/res/widgets/DoubleText.dart';
import 'package:ticket_app/core/res/widgets/TicketView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.background,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: AppStyles.h3,
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Text('Book Tickets', style: AppStyles.h1),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text('  Search'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                ),
                Ticketview()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
