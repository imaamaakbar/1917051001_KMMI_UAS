import 'package:flutter/material.dart';
import '../models/models.dart';

class AnimeThumbnail extends StatelessWidget {
  final SimpleAnime anime;

  const AnimeThumbnail({Key key, this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
              child: ClipRRect(
                  child: Image.asset('${anime.dishImage}', fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12))),
          const SizedBox(height: 10),
          Text(anime.title,
              maxLines: 1, style: Theme.of(context).textTheme.bodyText1),
          Text(anime.duration, style: Theme.of(context).textTheme.bodyText1)
        ]));
  }
}
