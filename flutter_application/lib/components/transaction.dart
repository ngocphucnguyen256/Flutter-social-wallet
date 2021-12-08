import 'package:flutter/material.dart';
import 'package:flutter_application/components/transaction_card.dart';
import 'package:flutter_application/main.dart';

class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

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
                      Expanded(
                        flex: 1,
                        child: TransactionCard(),
                      ),
                      Expanded(
                        flex: 1,
                        child: TransactionCard(),
                      ),
                      Expanded(
                        flex: 1,
                        child: TransactionCard(),
                      ),
                      Expanded(
                        flex: 1,
                        child: TransactionCard(),
                      ),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
