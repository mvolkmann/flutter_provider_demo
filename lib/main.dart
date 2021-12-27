import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'count_state.dart';
import 'counter.dart';
import 'profile.dart';
import 'profile_state.dart';
import 'report.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      // This demonstrates using multiple state providers.
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CountState>(create: (_) => CountState()),
          ChangeNotifierProvider<ProfileState>(create: (_) => ProfileState()),
        ],
        child: HomePage(title: 'Provider Demo'),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Counter(),
            Report(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
