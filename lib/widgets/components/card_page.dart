import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:provider_drawer_project/provider/provider_page.dart';
import 'package:provider_drawer_project/widgets/components/transaction_drawer_page.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pro = context.watch<ProviderPage>();
    return AnimatedContainer(
      duration: Duration(milliseconds: 210),
      transform: Matrix4.translationValues(pro.xOffset, pro.yOffset, 0)
        ..scale(pro.scaleFactor),
      padding: EdgeInsets.all(5),
      color: Color(0xFF263238),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                pro.isDrawerOpen
                    ? IconButton(
                        onPressed: () {
                          pro.show();
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ))
                    : IconButton(
                        onPressed: () {
                          pro.display();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                Text(
                  'My Cards',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.white,
                ),
              ],
            )),
        Container(
          height: 200,
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            'Current Balance',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Text(
                            'SBI BANK',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '12,432.32',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '*****  *****  *****  1505',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(children: [
                          Text(
                            'Card holder',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Expire',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ]),
                        Row(children: [
                          Text(
                            'loren Desouza',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            '02/2023',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ]),
                      ],
                    ),
                  )),
        ),
        Row(children: [
          Text(
            'Transaction',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            width: 250,
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          )
        ]),
        Text(
          'Today',
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          height: 10,
        ),
        TransactionPage()
      ]),
    );
  }
}
