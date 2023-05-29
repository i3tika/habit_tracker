import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InroWidgetOne extends StatelessWidget {
  const InroWidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Добро пожаловать!'),
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/restart.png',
            width: 300,
            height: 250,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Habit Tracker помогает вам заводить и плддерживать полезные привычки',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
