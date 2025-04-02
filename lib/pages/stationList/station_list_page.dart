import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  StationListPage(this.title, this.departure, this.arrival);
  String title;
  String? departure;
  String? arrival;

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            return Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (title == '출발역' && arrival == stationList[index]) {
            return Container();
          } else if (title == '도착역' && departure == stationList[index]) {
            return Container();
          }
          return GestureDetector(
            onTap: () {
              Navigator.pop(context, stationList[index]);
            },
            child: Container(
              height: 50,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                stationList[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(height: 1, color: Colors.grey[300]);
        },
        itemCount: stationList.length,
      ),
    );
  }
}
