import 'package:flutter/material.dart';

class SeatInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: Center(child: Text('A', style: TextStyle(fontSize: 18))),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Center(child: Text('B', style: TextStyle(fontSize: 18))),
        ),
        SizedBox(width: 50),
        SizedBox(
          width: 50,
          height: 50,
          child: Center(child: Text('C', style: TextStyle(fontSize: 18))),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: Center(child: Text('D', style: TextStyle(fontSize: 18))),
        ),
      ],
    );
  }
}
