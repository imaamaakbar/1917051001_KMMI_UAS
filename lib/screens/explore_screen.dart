import 'package:flutter/material.dart';
import '../api/mock_aninews_service.dart';
import '../components/components.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockNewnimeService();

  ExploreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView(scrollDirection: Axis.vertical, children: [
            TodayAnimeListView(animes: snapshot.data.todayRecipes),
            const SizedBox(height: 16),
          ]);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
