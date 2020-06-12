class Names {
  final int userId;
  final int id;
  final String title;

  Names({this.userId, this.id, this.title});

  factory Names.fromJSON(Map<String, dynamic> data) {
    return Names(id: data["id"], userId: data["userId"], title: data["title"]);
  }
}
