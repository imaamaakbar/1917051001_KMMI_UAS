import 'package:flutter/material.dart';
import '../models/models.dart';

import '../animenews_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  final ExploreAnime anime;

  const Card2({Key key, this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(anime.backgroundImage), fit: BoxFit.cover),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Column(
          children: [
            AuthorCard(
                authorName: anime.authorName,
                title: anime.role,
                imageProvider: AssetImage(anime.profileImage)),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      anime.title,
                      style: NewnimeTheme.lightTextTheme.headline1,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        anime.subtitle,
                        style: NewnimeTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
