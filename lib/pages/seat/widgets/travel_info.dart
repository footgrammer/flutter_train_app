import 'package:flutter/material.dart';

class TravelInfo extends StatelessWidget {
  TravelInfo({required this.departure, required this.arrival});

  String departure;
  String arrival;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 30,
        color: Colors.purple,
        fontWeight: FontWeight.bold,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Center(child: Text(departure))),
          Icon(Icons.arrow_circle_right_outlined, size: 30),
          Expanded(child: Center(child: Text(arrival))),
        ],
      ),
    );
  }
}
