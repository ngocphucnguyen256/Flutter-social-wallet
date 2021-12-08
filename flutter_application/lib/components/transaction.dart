import 'package:flutter/material.dart';
import 'package:flutter_application/components/transaction_card.dart';
import 'package:flutter_application/main.dart';

class TransactionData {
  String? adress;
  double? amount;
  double? usd;

  bool? isSend;

// added '?'

  TransactionData({this.adress, this.amount, this.usd, this.isSend});
  // can also add 'required' keyword
}

class Transactions extends StatelessWidget {
  List<TransactionData> data = [
    TransactionData(adress: "H4V6", amount: 0.20, usd: 1.5, isSend: false),
    TransactionData(adress: "41KB", amount: 0.14, usd: 1.2, isSend: true),
    TransactionData(adress: "41KB", amount: 0.14, usd: 1.2, isSend: true),
    TransactionData(adress: "H4V6", amount: 0.20, usd: 1.5, isSend: false),
    TransactionData(adress: "H4V6", amount: 0.20, usd: 1.5, isSend: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: subBgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Transactions',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('Viewall',
                          style: TextStyle(fontSize: 13, color: Colors.grey)),
                    ],
                  )),
              Expanded(
                flex: 9,
                child: Container(
                  child: Column(children: <Widget>[
                    for (var i in data)
                      Expanded(
                          flex: 1,
                          child: TransactionCard(
                            adress: i.adress.toString(),
                            amount: i.amount!,
                            usd: i.usd!,
                            isSend: i.isSend!,
                          )),
                  ]),
                ),
              ),
            ]),
      ),
    );
  }
}
