import 'package:flutter/material.dart';
import 'package:login_animation/main.dart';

class Mian2 extends StatefulWidget {
  @override
  _Mian2State createState() => _Mian2State();
}

class _Mian2State extends State<Mian2> {
  int _pageState = 0;
  bool showLogin = false;
  bool isShowPassword = false;
  double loginHeight = 600;
  bool showFirst = false;

  // ...........  ..............//
  double containerHeight = 80.0;
  double containerWidth = 150.0;
  double bottomMargin = 0.0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    switch (_pageState) {
      case 0:
        showLogin = false;
        break;
      case 1:
        containerHeight = 600.0;
        containerWidth = size.width;
        bottomMargin = 0.0;
        showLogin = true;
        break;
      case 2:
        loginHeight = 350;
        isShowPassword = true;

        break;
    }

    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: [startButtonAlign(size)],
      ),
    );
  }

  Align startButtonAlign(Size size) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _pageState = 1;
          });
        },
        child: AnimatedContainer(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(100.0),
            ),
          ),
          duration: Duration(milliseconds: 1000),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showLogin == false ? Center(child: Text("Start")) : Visibility(visible: false, child: Text("")),
              if (showLogin == false) Visibility(visible: false, child: Text("")) else Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Align loginContainer(Size size) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.all(10),
        width: size.width,
        height: loginHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
