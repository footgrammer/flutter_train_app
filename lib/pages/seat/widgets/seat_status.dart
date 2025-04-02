import 'package:flutter/material.dart';

class SeatStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(width: 4),
        Text('선택됨'),
        SizedBox(width: 20),
        SizedBox(
          width: 24,
          height: 24,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300]!,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(width: 4),
        Text('선택 안됨'),
      ],
    );
  }
}
