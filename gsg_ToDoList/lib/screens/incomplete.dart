import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class InComplete extends StatefulWidget {
  const InComplete({super.key});

  @override
  State<InComplete> createState() => _InCompleteState();
}

class _InCompleteState extends State<InComplete> {
  @override
  Widget build(BuildContext context) {
    //list of checklists--------------------------
    List<CheckboxListTile> ls = [];
    data?.forEach((element) {
      if (element['val'] == false) {
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
