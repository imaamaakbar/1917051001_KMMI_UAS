import 'package:flutter/material.dart';
import '../animenews_theme.dart';
import '../models/models.dart';

class Card1 extends StatelessWidget {
  final ExploreAnime anime;

  const Card1({Key key, this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              anime.subtitle,
              style: NewnimeTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                anime.title,
                style: NewnimeTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                anime.message,
                style: NewnimeTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                anime.authorName,
                style: NewnimeTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(anime.backgroundImage),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
