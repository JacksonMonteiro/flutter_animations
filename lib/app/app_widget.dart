import 'package:animations/app/views/home_view.dart';
import 'package:animations/app/views/sandbox.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        primarySwatch: Colors.red,
      ),
      home: HomeView(),
    );
  }
}