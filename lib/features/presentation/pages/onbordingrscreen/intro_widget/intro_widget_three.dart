import 'package:flutter/material.dart';

class InroWidgetThree extends StatelessWidget {
  const InroWidgetThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Отслеживайте свои\nуспехи'),
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/stat.png',
            width: 300,
            height: 250,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Статистика ваших привычек на диограммы ',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
