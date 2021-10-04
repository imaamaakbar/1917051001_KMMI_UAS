import 'package:flutter/material.dart';
import '../api/mock_aninews_service.dart';
import '../components/components.dart';

class CommunityScreen extends StatelessWidget {
  final comunService = MockNewnimeService();

  CommunityScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: comunService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(scrollDirection: Axis.vertical, children: [
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: snapshot.data.friendPosts)
            ]);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
