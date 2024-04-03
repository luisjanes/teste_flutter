import 'package:flutter/material.dart';
import '../models/time.dart';

class TimePage extends StatefulWidget {
  Time? time;
  TimePage({this.time,super.key});

  @override
  State<TimePage> createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.time!.color,
        title: Text(widget.time!.name),
      ),
    );
  }
}
