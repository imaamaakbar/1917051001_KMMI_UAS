import 'package:flutter/material.dart';
import 'screens/community_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/anime_screen.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';
import 'screens/search_screen.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    ExploreScreen(),
    RecipesScreen(),
    CommunityScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (context, tabManager, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Newnime',
              style: Theme.of(context).textTheme.headline6,
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: Search());
                  },
                  icon: const Icon(Icons.search))
            ],
          ),
          // 2
          body: pages[tabManager.selectedTab],
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            // 3
            currentIndex: tabManager.selectedTab,
            onTap: (index) {
              // 4
              tabManager.goToTab(index);
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp),
                label: 'Beranda',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'Info Anime',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.insert_comment_outlined),
                label: 'Komunitas',
              ),
            ],
          ),
        );
      },
    );
  }
}
