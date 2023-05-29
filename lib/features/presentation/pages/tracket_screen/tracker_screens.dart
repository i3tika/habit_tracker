import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../add_habit/add_habit.dart';

class TrackerScreens extends StatefulWidget {
  TrackerScreens({super.key});

  @override
  State<TrackerScreens> createState() => _TrackerScreensState();
}

class _TrackerScreensState extends State<TrackerScreens> {
  bool isDarkModeEnabled = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkModeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Прывычки'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddHabit(
                      thme: isDarkModeEnabled,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.list),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    content: Builder(builder: (context) {
                      return SizedBox(
                        // color: Colors.black,
                        width: 150,
                        height: 150,
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  isDarkModeEnabled = !isDarkModeEnabled;
                                });
                              },
                              child: const Text('Смена темы'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Настройки'),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('О приложении '),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: Column(
          children: [
            // Text(''),
            
          ],
        ),
      ),
    );
  }
}
