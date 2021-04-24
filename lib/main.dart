import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/view/joke_details.dart';
import 'package:getx_example/view/joke_view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: JokesView(),
      getPages: [
        GetPage(name: '/', page: () => JokesView()),
        GetPage(name: '/details', page: () => JokeDetailsView()),
      ],
    );
  }
}




