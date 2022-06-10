import '/ui/views/login_view/login_view.dart';
import 'package:flutter/material.dart';

import 'ui/views/get_started_view/get_started_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      // home: const GetStartedView(),
      home: const LoginView(),
    );
  }
}
