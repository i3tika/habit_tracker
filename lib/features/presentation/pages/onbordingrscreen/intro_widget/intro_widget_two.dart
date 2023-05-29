
import 'package:flutter/material.dart';

class InroWidgetTwo extends StatelessWidget {
  const InroWidgetTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Добавить несколько\nпривычек'),
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            'assets/images/list.png',
            width: 300,
            height: 250,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Каждый день, полсе выполнение поставьте галочку в приложении. ',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}