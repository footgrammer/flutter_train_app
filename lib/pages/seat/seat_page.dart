import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_info.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_status.dart';
import 'package:flutter_train_app/pages/seat/widgets/single_row.dart';
import 'package:flutter_train_app/pages/seat/widgets/travel_info.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SeatPageState();
  }
}

class _SeatPageState extends State<SeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('좌석 선택'),
      ),
      body: Column(
        children: [
          TravelInfo('천안아산', '전주'),
          SizedBox(height: 20),
          SeatStatus(),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(30),
              children: [SeatInfo(), for (int i = 1; i < 21; i++) SingleRow(i)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 40,
              left: 30,
              right: 30,
              top: 10,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('확인'),
                        content: Text('예약하시곘습니까?'),
                        actions: [
                          CupertinoDialogAction(
                            child: Text('취소'),
                            isDefaultAction: true,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text('확인'),
                            isDestructiveAction: true,
                            onPressed: () {},
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text(
                  '예매하기',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
