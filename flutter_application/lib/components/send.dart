import 'package:flutter/material.dart';
import 'package:flutter_application/components/gradient_button.dart';
import 'package:flutter_application/main.dart';

import '../main.dart';

class Send extends StatelessWidget {
  const Send({Key? key}) : super(key: key);
  final fontSize = 15.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: subBgColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Send',
                              style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Receive',
                              style: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: lightBgColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ABCVCVVCVCVC23123V1',
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.qr_code_scanner,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: lightBgColor,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Dak Amount",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, right: 20.0),
                        child: Row(
                          children: [
                            Text(
                              'Clear all',
                              style: TextStyle(
                                fontSize: fontSize,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RaisedGradientButton(
                          width: 100.0,
                          height: 40.0,
                          key: Key('button'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Send',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.white,
                              ),
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
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
