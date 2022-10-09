import 'package:flutter/material.dart';
import 'package:training/screens/All.dart';
import 'package:training/screens/complete.dart';
import 'package:training/screens/incomplete.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(Object context) {
    return Theme(
        data: ThemeData.dark(),
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: const Center(
                  child: Text('Muath_ToDo_List'),
                ),
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: 'all_tasks',
                    ),
                    Tab(
                      text: 'complete_tasks',
                    ),
                    Tab(
                      text: 'incomplete_tasks',
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  All(),
                  Complete(),
                  InComplete(),
                ],
              ),
            )));
  }
}
