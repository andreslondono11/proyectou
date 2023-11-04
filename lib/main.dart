import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:proyectou/screens/home_page.dart';

import 'package:provider/provider.dart';
import 'package:proyectou/bloc/theme.dart';
// import 'package:rate_my_app/rate_my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // final RateMyApp rateMyApp = RateMyApp(
  @override
  // int index = 0;
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: const MaterialAppWidthTehme(),
    );
  }
}

class MaterialAppWidthTehme extends StatelessWidget {
  const MaterialAppWidthTehme({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        themeMode: ThemeMode.system,
        theme: theme.getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // theme: ThemeData(useMaterial3: true),
        home: const HomePage());
  }
}
