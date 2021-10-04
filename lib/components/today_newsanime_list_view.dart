import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/models.dart';

class TodayAnimeListView extends StatelessWidget {
  final List<ExploreAnime> animes;

  const TodayAnimeListView({Key key, this.animes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Info Anime Hari Ini 😃',
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 16),
          Container(
              height: 400,
              color: Colors.transparent,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: animes.length,
                  itemBuilder: (context, index) {
                    final anime = animes[index];
                    return buildCard(anime);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 18);
                  })),
        ]));
  }

  Widget buildCard(ExploreAnime anime) {
    if (anime.cardType == AnimeCardType.card1) {
      return Card1(anime: anime);
    } else if (anime.cardType == AnimeCardType.card2) {
      return Card2(anime: anime);
    } else {
      throw Exception('This card doesn\'t exist yet');
    }
  }
}
