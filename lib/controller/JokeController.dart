
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/model/joke.dart';
import 'package:getx_example/model/joke_repository.dart';

class JokeController extends GetxController {
  var allJokes = <Joke>[].obs;
  var isLoading = false.obs;
  var isError = false.obs;

  var repo = JokeRepository();


  @override
  void onInit() {
  getJokes();
  ever(isError, (value) {
    if(value == isError(true)) {
      Get.snackbar("problem", "issues in your internet connection",
          backgroundColor: Colors.black, colorText: Colors.white );
    }
  });
    super.onInit();


  }



  getJokes() async {
    try {
     isLoading(true);
     var jokes = await repo.getJokes();
     if(jokes != null) {
       allJokes.value = jokes;
     }
    }catch(e) {
     isError(true);
    }finally {
      isLoading(false);
    }
  }
}



