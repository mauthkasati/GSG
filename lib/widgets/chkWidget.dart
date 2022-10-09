import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/classes/chkClass.dart';
import 'package:training/data/data.dart';

// ignore: must_be_immutable
class ChkWidget extends StatefulWidget {
  ChkClass chkClass;
  ChkWidget(this.chkClass, {super.key});

  @override
  State<ChkWidget> createState() => _ChkWidgetState();
}

class _ChkWidgetState extends State<ChkWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        height: 30,
        child: CheckboxListTile(
          title: Text(widget.chkClass.text.toString()),
          value: widget.chkClass.chk,
          onChanged: (value) {
            widget.chkClass.chk = !value!;
          },
        ));
  }
}
