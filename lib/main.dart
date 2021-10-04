import 'package:flutter/material.dart';
import 'animenews_theme.dart';
import 'home.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(const Newnime());
}

class Newnime extends StatelessWidget {
  const Newnime({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = NewnimeTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Newnime',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
