import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => new _ExampleState();
}

class _ExampleState extends State<Example> with SingleTickerProviderStateMixin {
  bool showFirst = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Example"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      color: Color(0xffD1D8E0),
                      height: 1,
                      width: 100,
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 20,
                      width: 100,
                      child: Row(
                        children: [
                          showFirst == true
                              ? Container(
                            height: 3,
                            width: 50,
                            color: Color(0xff00A5FF),
                          )
                              : Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: false,
                            child: Container(
                              height: 3,
                              width: 50,
                              color: Colors.transparent,
                            ),
                          ),
                          showFirst == false
                              ? Container(
                            height: 3,
                            width: 50,
                            color: Color(0xff00A5FF),
                          )
                              : Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: false,
                            child: Container(
                              height: 3,
                              width: 50,
                              color: Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                RaisedButton(onPressed: () {
                  print("select one");
                  setState(() {
                    showFirst = true;
                  });
                }),
                RaisedButton(onPressed: () {
                  setState(() {
                    showFirst = false;
                  });

                  print("select two");
                })
              ],
            )
          ],
        ));
  }
}