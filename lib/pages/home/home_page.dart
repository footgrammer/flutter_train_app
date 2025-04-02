import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/seat_page.dart';
import 'package:flutter_train_app/pages/stationList/station_list_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  String? departure;
  String? arrival;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('기차 예매')),
      backgroundColor: Theme.of(context).canvasColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).cardColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  stationArea('출발역', departure ?? '선택'),
                  Container(
                    width: 2,
                    height: 50,
                    color: Theme.of(context).dividerColor,
                  ),
                  stationArea('도착역', arrival ?? '선택'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (departure == null || arrival == null) {
                    return;
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SeatPage(
                          departure: departure!,
                          arrival: arrival!,
                        );
                      },
                    ),
                  );
                },
                child: Text('좌석 선택'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded stationArea(String title, String station) {
    return Expanded(
      child: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () async {
              String? result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return StationListPage(title, departure, arrival);
                  },
                ),
              );
              if (result != null) {
                setState(() {
                  if (title == '출발역') {
                    departure = result;
                  } else {
                    arrival = result;
                  }
                });
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(station, style: TextStyle(fontSize: 40)),
              ],
            ),
          );
        },
      ),
    );
  }
}
