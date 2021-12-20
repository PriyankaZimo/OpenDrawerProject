import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_drawer_project/widgets/components/card_page.dart';
import 'package:provider_drawer_project/widgets/components/dashboard_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF263238),
     body: Stack(
      children: [
        DashboardPage(),
        CardPage()
      ]
    ),
    );
  }
}
