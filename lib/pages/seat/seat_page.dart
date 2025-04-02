import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat/widgets/seat_list_view.dart';
import 'package:flutter_train_app/pages/seat/widgets/travel_info.dart';

class SeatPage extends StatefulWidget {
  SeatPage({required this.departure, required this.arrival});

  String departure;
  String arrival;

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectedRowNum;
  int? selectedColNum;

  void onSelectedSeat(int rowNum, int colNum) {
    setState(() {
      selectedRowNum = rowNum;
      selectedColNum = colNum;
    });
  }

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TravelInfo(departure: widget.departure, arrival: widget.arrival),
              SizedBox(height: 20),
              SeatListView(
                selectedRowNum: selectedRowNum,
                selectedColNum: selectedColNum,
                onSelected: onSelectedSeat,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedColNum == null && selectedRowNum == null) {
                      return;
                    }
                    //선택되어져 있다면 팝업 출력
                    showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('예매하시겠습니까?'),
                          content: Text(
                            '좌석 : $selectedRowNum - ${['A', 'B', 'C', 'D'][selectedColNum! - 1]}',
                          ),
                          actions: [
                            CupertinoDialogAction(
                              child: Text(
                                '취소',
                                style: TextStyle(color: Colors.red),
                              ),
                              isDefaultAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoDialogAction(
                              child: Text(
                                '확인',
                                style: TextStyle(color: Colors.blue),
                              ),
                              isDestructiveAction: true,
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('예매하기'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
