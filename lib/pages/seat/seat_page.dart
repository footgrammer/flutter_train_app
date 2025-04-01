import 'package:flutter/material.dart';

class SeatPage extends StatelessWidget {
  SeatPage(this.type, {super.key});
  final String type;
  final List<String> stationList = [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
    '부산',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),

        title: Text((type == 'departure') ? '출발역' : '도착역'),
      ),
      body: Column(),
    );
  }
}
