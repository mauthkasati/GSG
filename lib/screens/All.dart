import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    //list of checklists--------------------------
    List<CheckboxListTile> ls = [];
    data?.forEach((element) {
      ls.add(CheckboxListTile(
        title: Text(element['text'].toString()),
        value: element['val'],
        onChanged: (v) {
          element['val'] = !v!;
          setState(() {});
        },
      ));
    });
    //--------------------------------------------
    return SingleChildScrollView(
      child: Column(
        children: ls,
      ),
    );
  }
}
