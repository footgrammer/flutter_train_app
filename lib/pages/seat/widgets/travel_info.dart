import 'package:flutter/material.dart';

class TravelInfo extends StatelessWidget {
  TravelInfo(this.departure, this.arrival, {super.key});
  String departure;
  String arrival;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          departure,
          style: TextStyle(
            fontSize: 30,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Icon(Icons.arrow_circle_right_outlined, size: 30),
        Spacer(),
        Text(
          arrival,
          style: TextStyle(
            fontSize: 30,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
