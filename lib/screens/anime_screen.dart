import 'package:flutter/material.dart';
import '../components/anime_grid_view.dart';
import '../api/mock_aninews_service.dart';

class RecipesScreen extends StatelessWidget {
  final exploreService = MockNewnimeService();

  RecipesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: exploreService.getRecipes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AnimesGridView(animes: snapshot.data);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
