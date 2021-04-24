import 'dart:convert';
import 'package:getx_example/model/joke.dart';
import 'package:http/http.dart' as http;



class JokeRepository {

  Future<List<Joke>> getJokes() async {

      var res = await http.get(Uri.parse("https://official-joke-api.appspot.com/jokes/ten/"));
      var json = jsonDecode(res.body) as List;
      var jokes  = json.map((joke) => Joke.toObject(joke)).toList();
      return jokes;
  }
}
