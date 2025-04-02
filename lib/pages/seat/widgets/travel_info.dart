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
        color: Theme.of(context).highlightColor,
        fontWeight: FontWeight.bold,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Center(child: Text(departure))),
            Icon(Icons.arrow_circle_right_outlined, size: 30),
            Expanded(child: Center(child: Text(arrival))),
          ],
        ),
      ),
    );
  }
}
