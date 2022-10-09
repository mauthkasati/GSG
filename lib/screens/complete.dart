import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class Complete extends StatefulWidget {
  const Complete({super.key});

  @override
  State<Complete> createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    //list of checklists--------------------------
    List<CheckboxListTile> ls = [];
    data?.forEach((element) {
      if (element['val'] == true) {
        ls.add(CheckboxListTile(
          title: Text(element['text'].toString()),
          value: element['val'],
          onChanged: (v) {
            element['val'] = !v!;
            setState(() {});
          },
        ));
      }
    });
    //--------------------------------------------
    return SingleChildScrollView(
      child: Column(
        children: ls,
      ),
    );
  }
}
