import 'package:flutter/material.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({super.key});

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('좌석 선택~')),
      body: Center(child: const Text('Welcome to the Seat Page!')),
    );
  }
}
