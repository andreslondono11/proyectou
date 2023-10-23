import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyectou/drawer/lateral.dart';

import 'package:proyectou/screens/boton_nav.dart';
import 'package:proyectou/screens/rutas.dart';
import 'package:rate_my_app/rate_my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'home',
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  NavegaHome? myBnB;
  final RateMyApp rateMyApp = RateMyApp(
    minDays: 0,
    remindLaunches: 3,
    minLaunches: 3,
    googlePlayIdentifier: "com.proyectou.proyectou",
  );

  @override
  void initState() {
    myBnB = NavegaHome(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });

    rateMyApp.init().then((_) {
      for (var condition in rateMyApp.conditions) {
        if (condition is DebuggableCondition) {
          print(condition.valuesAsString);
        }
      }

      if (rateMyApp.shouldOpenDialog) {
        rateMyApp.showRateDialog(
          context,
          title: 'Calfica mi APP',
          message: 'tu opinion es importante para seguir mejorando',
          rateButton: 'CALIFICA',
          noButton: 'No Gracias',
          laterButton: 'Quizas Despues',
          onDismissed: () =>
              rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
        );
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWigdet(),
      drawerDragStartBehavior: DragStartBehavior.down,

      drawerEnableOpenDragGesture: true,
      // drawerDragStartBehavior: DragStartBehavior.down,
      drawerScrimColor: Color.fromARGB(17, 253, 253, 253),
      // endDrawer: DrawerWigdet(),
      drawerEdgeDragWidth: 10,
      bottomNavigationBar: myBnB,
      body: Rutas(index: index),
    );
  }
}
