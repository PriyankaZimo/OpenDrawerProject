import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YesterdayPage extends StatelessWidget {
  List item = ['AirPods 2th\nApple', ' Coffe Mugs', 'MoneyTransf'];
  List img = [
    'https://www.freepnglogos.com/uploads/apple-logo-png/file-apple-logo-black-svg-wikimedia-commons-1.png',
    'https://www.freeiconspng.com/thumbs/coffee-icon-png/cup-of-coffee-icon-4.png',
    'https://www.freepnglogos.com/uploads/apple-logo-png/file-apple-logo-black-svg-wikimedia-commons-1.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 195,
        child: ListView.builder(
            itemCount: item.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(5),
              height: 55,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                      offset: Offset(5, 0)),
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(-5, -5))
                ],
                border: Border.all(color: Color(0xFF263238)),
                color: Color(0xFF263238),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    Image.network(
                      img[index],
                      scale: 25,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      item[index],
                      style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                    ),SizedBox(width: 150,),
                    Text('-199',style: TextStyle(color: Colors.green),)
                  ]),
                ],
              ),
            )));
  }
}
