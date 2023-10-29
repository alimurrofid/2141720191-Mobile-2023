import 'package:flutter/material.dart';

void main() {
  runApp(const TransactionHistory());
}

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transaction History',
      home: Scaffold(
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Transaction History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.red.shade600))),
                    child: const Text(
                      'Pending',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2, color: Colors.grey.shade300))),
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 150, bottom: 10),
                  child: Image.network(
                      'data:image/png;base64,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'),
                ),
                Text(
                  'All transaction is Completed!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 200),
                  child: Text(
                    'Any pending transaction will appear in this page',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
              ],
            ),

            //==== Bottom Bar =====//
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.5, color: Colors.grey.shade300),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 5, right: 35),
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          margin: EdgeInsets.only(bottom: 7),
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/128/748/748015.png'),
                        ),
                        Container(
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey[700]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 5, right: 35),
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          margin: EdgeInsets.only(bottom: 7),
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/128/4726/4726008.png'),
                        ),
                        Container(
                          child: Text(
                            "History",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.red[600]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 5, right: 35),
                    child: Column(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgnqTaaeQBItGYUyidrkBZOUES8_nnIDMvhw&usqp=CAU'),
                          decoration: BoxDecoration(
                              color: Colors.red[600],
                              borderRadius: BorderRadius.circular(6)),
                          // margin: EdgeInsets.only(bottom: 7),
                        ),
                        Container(
                          child: Text(
                            "Pay",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey[700]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 5, right: 35),
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          margin: EdgeInsets.only(bottom: 7),
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/128/3884/3884252.png'),
                        ),
                        Container(
                          child: Text(
                            "Inbox",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey[700]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 25,
                          margin: EdgeInsets.only(bottom: 7),
                          child: Image.network(
                              'https://cdn-icons-png.flaticon.com/128/1077/1077063.png'),
                        ),
                        Container(
                          child: Text(
                            "Account",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey[700]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
