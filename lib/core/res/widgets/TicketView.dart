import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/AppStyles.dart';

class Ticketview extends StatelessWidget {
  const Ticketview({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Center(child: Text("Hello")),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        ),
      ),
    );
  }
}
