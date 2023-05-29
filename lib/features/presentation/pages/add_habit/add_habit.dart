import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddHabit extends StatelessWidget {
   const AddHabit({super.key,required this.thme});

  final bool thme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: thme ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('Добваить привычку'),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)),
                width: 130,
                height: 40,
                child: Center(child: Text('Сохранить')),
              )
            ],
          ),
          actions: [
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(color: Colors.white)),
            //   width: 90,
            //   height: 3,
            //   child: Center(child: Text('Сохранить')),
            // )
          ],
        ),
      ),
    );
  }
}
