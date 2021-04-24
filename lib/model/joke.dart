class Joke {
  int id;
  String setup;
  Joke({this.id, this.setup});

  Joke.toObject(Map<String, dynamic> json){
    id = json['id'];
    setup = json['setup'];
  }
}
