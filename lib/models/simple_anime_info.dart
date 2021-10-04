class SimpleAnime {
  String dishImage;
  String title;
  String duration;
  String source;
  List<String> information;

  SimpleAnime(
      this.dishImage, this.title, this.duration, this.source, this.information);

  SimpleAnime.fromJson(Map<String, dynamic> json) {
    dishImage = json['dishImage'];
    title = json['title'];
    duration = json['duration'];
    source = json['source'];
    information = json['information'].cast<String>();
  }
}
