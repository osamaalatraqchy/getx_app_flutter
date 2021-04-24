import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JokeDetailsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Get.arguments[0].toString()),
        ),
        body: Center(child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(15),
          color: Colors.amberAccent,
            child: Center(
                child: Text(Get.arguments[1],
                  style: TextStyle(color: Colors.black, fontSize: 20),))),)

    );
  }
}