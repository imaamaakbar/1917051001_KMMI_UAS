import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/components.dart';
import '../models/models.dart';

class AnimesGridView extends StatelessWidget {
  final List<SimpleAnime> animes;

  const AnimesGridView({Key key, this.animes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: GridView.builder(
            itemCount: animes.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 1500.0),
            itemBuilder: (context, index) {
              final simpleAnime = animes[index];
              return GestureDetector(
                onTap: () async {
                  await launch(animes[index].source);
                },
                // ignore: prefer_const_constructors
                child: AnimeThumbnail(anime: simpleAnime),
              );
            }));
  }
}
