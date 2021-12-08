import 'package:flutter/material.dart';
import 'package:flutter_application/components/balance.dart';
import 'package:flutter_application/components/download.dart';
import 'package:flutter_application/components/help.dart';
import 'package:flutter_application/components/last_pay.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/components/gradient_button.dart';
import 'package:flutter_application/components/send.dart';

class MiddleContent extends StatelessWidget {
  const MiddleContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      child: Row(children: [
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Text(
                              'ABCVCVVCVCVC23123V1',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: RaisedGradientButton(
                          width: 70.0,
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
                              Colors.pink
                            ],
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Balance(),
                ),
                Expanded(
                  flex: 1,
                  child: Send(),
                ),
              ],
            )),
          ),
          Expanded(
              flex: 4,
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Column(children: [
                    Expanded(child: Help()),
                    Expanded(
                        child: Row(children: [
                      Expanded(
                        child: LastPay(),
                      ),
                      Expanded(
                        child: LastPay(),
                      ),
                    ]))
                  ]),
                ),
                Expanded(flex: 1, child: Download()),
              ])),
        ],
      )),
    );
  }
}
