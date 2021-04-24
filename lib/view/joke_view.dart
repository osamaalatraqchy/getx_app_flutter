import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/JokeController.dart';

import 'joke_details.dart';

class JokesView extends StatelessWidget {
  final  controller = Get.put(JokeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('photos'),
      ),
      body:  Obx(() {
        if(controller.isLoading.value == true) {
          return Center(child: CircularProgressIndicator(),);
        } else {
          return ListView.builder(
            itemCount: controller.allJokes.length,
            itemBuilder: (context, i) {
              return Card(
                elevation: 5,
                child: Container(
                  color: Colors.amber,
                  child: ListTile(
                    leading: Icon(Icons.agriculture),
                    trailing: Icon(Icons.arrow_forward),
                    title: Text(controller.allJokes[i].setup, style: TextStyle(color: Colors.black),),

                    onTap: () {
                      Get.toNamed('/details', arguments: [controller.allJokes[i].id,
                        controller.allJokes[i].setup]);
                    },
                  ),
                ),
              );
            },
          );
        }

      })




    );
          }

  }
