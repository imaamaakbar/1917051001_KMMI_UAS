part 'instruction.dart';

class AnimeCardType {
  static const String card1 = 'card1';
  static const String card2 = 'card2';
}

class ExploreAnime {
  String cardType;
  String title;
  String subtitle;
  String backgroundImage;
  String message;
  String authorName;
  String role;
  String profileImage;
  int durationInMinutes;

  ExploreAnime({
    this.cardType,
    this.title,
    this.subtitle,
    this.backgroundImage,
    this.message,
    this.authorName,
    this.role,
    this.profileImage,
    this.durationInMinutes,
  });

  ExploreAnime.fromJson(Map<String, dynamic> json) {
    cardType = json['cardType'];
    title = json['title'];
    subtitle = json['subtitle'];
    backgroundImage = json['backgroundImage'];
    message = json['message'];
    authorName = json['authorName'];
    role = json['role'];
    profileImage = json['profileImage'];
    durationInMinutes = json['durationInMinutes'];
  }
}
