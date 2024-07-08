import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/styles/AppStyles.dart';
import 'package:ticket_app/core/res/widgets/BigDot.dart';

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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Text("NYC", style: AppStyles.h3.copyWith(color: Colors.white)),
                Expanded(child: Container()),
                const BigDot(),
                const Expanded(
                    child: Stack(
                  children: [
                    SizedBox(
                      child: Text("---------"),
                    ),
                    Center(
                      child: Text("Plane"),
                    )
                  ],
                )),
                const BigDot(),
                Expanded(child: Container()),
                Text("NYC", style: AppStyles.h3.copyWith(color: Colors.white)),
              ],
            ),
            Row(),
          ],
        ),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        ),
      ),
    );
  }
}
