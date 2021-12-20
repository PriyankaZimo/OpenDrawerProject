import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_drawer_project/provider/provider_page.dart';
import 'package:provider_drawer_project/widgets/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
     home:ChangeNotifierProvider(create: (_)=>ProviderPage(),child: HomePage(),)
    );
  }
}
