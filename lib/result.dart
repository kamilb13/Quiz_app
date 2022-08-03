import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('You did it', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
    );
  }
}
