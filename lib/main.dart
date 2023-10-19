import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:proyectou/drawer/lateral.dart';
import 'package:proyectou/screens/boton_nav.dart';
import 'package:proyectou/screens/rutas.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:startapp_sdk/startapp.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'home', home: HomePage());
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
      rateMyApp.conditions.forEach((condition) {
        if (condition is DebuggableCondition){
          print(condition.valuesAsString);
        }
      });

      if(rateMyApp.shouldOpenDialog){
        rateMyApp.showRateDialog(context,
          title: 'Calfica mi APP',
          message: 'tu opinion es importante para seguir mejorando',
          rateButton: 'CALIFICA',
          noButton: 'No Gracias',
          laterButton: 'Quizas Despues',
          onDismissed: () =>
              rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
        );
      }
    } );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: const Text('AppBar Demo'),
      //  ),
      //drawer: DrawerWigdet(),
      bottomNavigationBar: myBnB,
      body: Rutas(index: index),
      drawer: const DrawerWigdet(),




    );
  }
}

class _MyAppState extends State {
  var startAppSdk = StartAppSdk();

  StartAppInterstitialAd? interstitialAd;

  @override
  void initState() {
    super.initState();

    // TODO make sure to comment out this line before release
    startAppSdk.setTestAdsEnabled(true);

    loadInterstitialAd();
  }

  void loadInterstitialAd() {
    startAppSdk.loadInterstitialAd().then((interstitialAd) {
      setState(() {
        this.interstitialAd = interstitialAd;
      });
    }).onError((ex, stackTrace) {
      debugPrint("Error loading Interstitial ad: ${ex?.hashCode}");
    }).onError((error, stackTrace) {
      debugPrint("Error loading Interstitial ad: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          if (interstitialAd != startAppSdk) {
            interstitialAd!.show().then((shown) {
              if (shown) {
                setState(() {
                  // NOTE interstitial ad can be shown only once
                  this.interstitialAd = interstitialAd ;

                  // NOTE load again
                  loadInterstitialAd();
                });
              }

              return null;
            }).onError((error, stackTrace) {
              debugPrint("Error showing Interstitial ad: $error");
            });
          }
        },
        child: Text('Show Interstitial'),
      ),
    );
  }
}