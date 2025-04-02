import 'package:flutter/material.dart';

class SeatListView extends StatelessWidget {
  SeatListView({
    required this.selectedRowNum,
    required this.selectedColNum,
    required this.onSelected,
  });

  int? selectedRowNum;
  int? selectedColNum;
  void Function(int, int) onSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              label('A'),
              SizedBox(width: 4),
              label('B'),
              SizedBox(width: 4),
              label(''),
              SizedBox(width: 4),
              label('C'),
              SizedBox(width: 4),
              label('D'),
            ],
          ),
          ...List.generate(20, (i) => singleRow(i + 1)),
        ],
      ),
    );
  }

  Container singleRow(int rowNum) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          seat(rowNum, 1),
          SizedBox(width: 4),
          seat(rowNum, 2),
          SizedBox(width: 4),
          label('$rowNum'),
          SizedBox(width: 4),
          seat(rowNum, 3),
          SizedBox(width: 4),
          seat(rowNum, 4),
        ],
      ),
    );
  }

  GestureDetector seat(int rowNum, int colNum) {
    return GestureDetector(
      onTap: () {
        onSelected(rowNum, colNum);
      },
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color:
              selectedRowNum == rowNum && selectedColNum == colNum
                  ? Colors.purple
                  : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }

  Container label(String text) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      child: Center(child: Text(text, style: TextStyle(fontSize: 18))),
    );
  }
}
