import 'package:flutter/material.dart';
import 'package:flutter_application/components/balance.dart';
import 'package:flutter_application/components/download.dart';
import 'package:flutter_application/components/help.dart';
import 'package:flutter_application/components/last_pay.dart';
import 'package:flutter_application/components/gradient_button.dart';
import 'package:flutter_application/components/send.dart';
import 'package:flutter_application/helper/responsive.dart';

class MiddleContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 18.0),
      child: Container(
          child: Scrollbar(
        isAlwaysShown: false,
        thickness: 0.1,
        hoverThickness: 0.1,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  constraints: BoxConstraints(maxHeight: screenHeight * 0.1),
                  child: Container(
                    child: Row(
                      children: [
                        Flexible(
                          flex: 7,
                          child: Container(
                            child: Row(children: [
                              MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.stacked_line_chart,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                hoverColor: Colors.blue,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Master Account',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                  Text(
                                    'ABCVCVVCVCVC23123V1',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, bottom: 8.0),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.copy,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                hoverColor: Colors.blue,
                              ),
                            ]),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: RaisedGradientButton(
                                key: Key('button'),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.qr_code,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Generate QR',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    Colors.green,
                                    Colors.blue,
                                    Colors.purple,
                                  ],
                                ),
                                onPressed: () {}),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    constraints: screenWidth >= 650
                        ? BoxConstraints(maxHeight: screenHeight * 0.5)
                        : BoxConstraints(maxHeight: screenHeight),
                    child: Responsive(
                      key: Key('balance send'),
                      mobile: Column(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Balance(),
                          ),
                          Flexible(
                            flex: 1,
                            child: Send(),
                          ),
                        ],
                      ),
                      tablet: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Balance(),
                          ),
                          Flexible(
                            flex: 1,
                            child: Send(),
                          ),
                        ],
                      ),
                      desktop: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: Balance(),
                          ),
                          Flexible(
                            flex: 1,
                            child: Send(),
                          ),
                        ],
                      ),
                    )),
                Container(
                    constraints: BoxConstraints(maxHeight: screenHeight * 0.4),
                    child: Row(children: [
                      Flexible(
                        flex: 1,
                        child: Column(children: [
                          Flexible(child: Help()),
                          Flexible(
                              child: Row(children: [
                            Flexible(
                              child: LastPay(),
                            ),
                            Flexible(
                              child: LastPay(),
                            ),
                          ]))
                        ]),
                      ),
                      Flexible(flex: 1, child: Download()),
                    ])),
              ],
            );
          },
          itemCount: 1,
        ),
      )),
    );
  }
}
