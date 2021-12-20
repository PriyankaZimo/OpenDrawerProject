import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
              child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt5EU6lgNC7V5KVC6xZsifyvrk5v4PNOA5VQ&usqp=CAU',
            scale: 3,
          )),Text('Rogger Hoffman',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          Text('Son fransciso CA',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),),
          SizedBox(
            height: 40,
          ),
          Row(children: [
            Icon(Icons.dashboard,color: Colors.white,),SizedBox(width: 10,),
            Text(
              'Dashboard',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Icon(Icons.message,color: Colors.grey,),SizedBox(width: 10,),
            Text(
              'Message',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Icon(Icons.add,color: Colors.grey,),SizedBox(width: 10,),
            Text(
              'Utility Bills',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Icon(Icons.add_ic_call_rounded ,color: Colors.grey,),
            SizedBox(
              width: 10,
            ),
            Text(
              'Calls',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ]),
          SizedBox(
            height: 15,
          ),
          Row(children: [
            Icon(Icons.add_task_rounded ,color: Colors.grey,),   SizedBox(
              width: 10,
            ),
            Text(
              'Task',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ]),SizedBox(height:350,),
          Row(
              children: [

            Icon(Icons.logout,color: Colors.grey,),SizedBox(width: 10,),
            Text(
              'LogOut',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            )
          ])
        ],
      ),
    );
  }
}
