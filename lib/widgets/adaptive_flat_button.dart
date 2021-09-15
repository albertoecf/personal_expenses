
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function selectHandler;
  AdaptiveFlatButton(this.text, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
                        ? CupertinoButton(
                            color: Colors.blue,
                            onPressed: selectHandler,
                            child: Text(
                              text,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        : FlatButton(
                            textColor: Theme.of(context).primaryColor,
                            onPressed: selectHandler,
                            child: Text(
                              text,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          );
  }
}