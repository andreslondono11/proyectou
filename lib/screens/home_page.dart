import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:proyectou/bloc/theme.dart';

import 'package:proyectou/screens/page1.dart';
import 'package:proyectou/screens/page2.dart';
import 'package:proyectou/screens/page3.dart';
import 'package:proyectou/screens/page4.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RateMyApp rateMyApp = RateMyApp(
    minDays: 0,
    remindLaunches: 3,
    minLaunches: 3,
    googlePlayIdentifier: "com.proyectou.proyectou",
  );
  @override
  void initState() {
    rateMyApp.init().then((_) {
      for (var condition in rateMyApp.conditions) {
        if (condition is DebuggableCondition) {
          (condition.valuesAsString);
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

  int _currentIndex = 0;

  final screens = [Page1(), Page2(), Page3(), Page4()];

  final colori = [
    Colors.blue,
    const Color.fromARGB(255, 160, 19, 9),
    Colors.green,
    const Color.fromARGB(255, 222, 142, 237)
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        home: Scaffold(
          drawer: Drawer(
              shadowColor: colori[_currentIndex],
              elevation: 20.20,
              shape: const Border(left: BorderSide.none),
              // backgroundColor: const Color(0xfffecf1f7),
              width: 280,
              child: ListView(
                  // Importante: elimine cualquier padding del ListView.

                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 20),
                      child: Text('Proyecto U',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              decoration: TextDecoration.none)),
                    ),
                    ListTile(
                        leading: const Icon(Icons.assistant_navigation),
                        // iconColor: Color.fromARGB(255, 84, 82, 82),
                        enabled: true,
                        title: const Text('SIATH',
                            style: TextStyle(
                                // color: Color.fromARGB(255, 84, 82, 82),
                                fontWeight: FontWeight.w400,
                                fontSize: 12)),
                        onTap: () async {
                          final url = Uri.parse(
                              'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            print('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    ListTile(
                        leading: const Icon(Icons.family_restroom),
                        // iconColor: const Color.fromARGB(255, 100, 97, 93),
                        enabled: true,
                        // hoverColor: const Color.fromARGB(255, 234, 205, 167),
                        title: const Text('BIENESTAR',
                            style: TextStyle(
                                // color: Color.fromARGB(255, 84, 82, 82),
                                fontWeight: FontWeight.w400,
                                fontSize: 12)),
                        onTap: () async {
                          final url = Uri.parse(
                              'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            print('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    const SizedBox(
                      height: 30,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text('CANALES DESTACADOS ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: AutofillHints.birthdayMonth,
                              decorationStyle: TextDecorationStyle.solid,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                              leading: const Icon(Icons.note_outlined),
                              title: const Text(
                                'SEMANA',
                                style: TextStyle(
                                    // color: Color.fromARGB(255, 84, 82, 82),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11),
                              ),
                              // iconColor: const Color.fromARGB(255, 84, 82, 82),
                              enabled: true,
                              onTap: () async {
                                final url =
                                    Uri.parse('https://www.semana.com/');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url,
                                      mode: LaunchMode.inAppWebView,
                                      webViewConfiguration:
                                          const WebViewConfiguration(
                                              enableDomStorage: true,
                                              enableJavaScript: true));
                                  print('Cliked');
                                  // Actualiza el estado de la aplicación
                                  // ...
                                }
                              }),
                          ListTile(
                              leading: const Icon(Icons.note_outlined),
                              title: const Text(
                                'EL TIEMPO',
                                style: TextStyle(
                                    // color: Color.fromARGB(255, 84, 82, 82),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11),
                              ),
                              // iconColor: const Color.fromARGB(255, 84, 82, 82),
                              enabled: true,
                              onTap: () async {
                                final url =
                                    Uri.parse('https://www.eltiempo.com/');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                  print('Cliked');
                                  // Actualiza el estado de la aplicación
                                  // ...
                                }
                              }),
                          ListTile(
                              leading: const Icon(Icons.note_outlined),
                              title: const Text(
                                'EL ESPECTADOR',
                                style: TextStyle(
                                    // color: Color.fromARGB(255, 84, 82, 82),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11),
                              ),
                              // iconColor: const Color.fromARGB(255, 84, 82, 82),
                              enabled: true,
                              onTap: () async {
                                final url =
                                    Uri.parse('https://www.elespectador.com/');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url);
                                  print('Cliked');
                                  // Actualiza el estado de la aplicación
                                  // ...
                                }
                              }),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text('APLICACIONES DESTACADAS ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: AutofillHints.birthdayMonth,
                              decorationStyle: TextDecorationStyle.solid,
                              fontStyle: FontStyle.normal,
                              // fontSize: 18,
                              decoration: TextDecoration.none)),
                    ),
                    ListTile(
                        leading: const Icon(Icons.cast_for_education_outlined),
                        title: const Text(
                          'DOCTRINA MILITAR',
                          style: TextStyle(
                              // color: Color.fromARGB(255, 84, 82, 82),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        // iconColor: const Color.fromARGB(255, 84, 82, 82),
                        enabled: true,
                        onTap: () async {
                          final url = Uri.parse(
                              'https://play.google.com/store/apps/details?id=co.mil.ejercito.doctrina');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            print('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    ListTile(
                        leading: const Icon(Icons.home_work_outlined),
                        title: const Text(
                          'CAJA DE HONOR',
                          style: TextStyle(
                              // color: Color.fromARGB(255, 84, 82, 82),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        // iconColor: const Color.fromARGB(255, 84, 82, 82),
                        enabled: true,
                        onTap: () async {
                          final url = Uri.parse(
                              'https://play.google.com/store/apps/details?id=com.proximate.caja_honor');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            print('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    const SizedBox(
                      height: 80,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text('TEMA DE CONFIGURIACION',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: AutofillHints.birthdayMonth,
                              decorationStyle: TextDecorationStyle.solid,
                              fontStyle: FontStyle.normal,
                              // fontSize: 18,
                              decoration: TextDecoration.none)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ListaBotones(),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            elevation: 5.2,
                            padding: const EdgeInsets.only(top: 0, right: 100),
                            // textStyle: TextStyle(decoration: TextDecoration.underline),
                            // backgroundColor: const Color(0xfff921b21),
                            // foregroundColor:
                            //     const Color.fromARGB(255, 101, 100, 100)
                          ),
                          isSemanticButton: true,
                          child: const Text(
                            'POLITICAS DE SEGURIDAD',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          onPressed: () async {
                            final url = Uri.parse(
                                'https://sites.google.com/view/politicasde-seguridad/politicas-de-seguridad');
                            if (await canLaunchUrl(url)) {
                              await launchUrl(url);
                              print('Cliked');
                            }
                          },
                        ),
                      ],
                    )
                  ])),
          appBar: AppBar(
            shadowColor: colori[_currentIndex],
            elevation: 5.20,
            toolbarHeight: 40,
            // iconTheme: IconThemeData(color: colori[_currentIndex]),
            // backgroundColor: colori[_currentIndex],
            title: Text('Proyecto U'),
            centerTitle: true,
          ),
          body: screens[_currentIndex],
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            margin: const EdgeInsets.only(bottom: 18, right: 0),
            child: GNav(
                tabBorderRadius: 9000,
                padding: EdgeInsets.all(15),
                // iconSize: 15,
                color: colori[_currentIndex],
                // textStyle: TextStyle(fontSize: 13),
                tabBackgroundColor: colori[_currentIndex],
                selectedIndex: _currentIndex,
                onTabChange: (index) => {setState(() => _currentIndex = index)},
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Inicio',
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.room_service,
                    text: 'Servicios',
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.cast_for_education,
                    text: 'Doctrina',
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  ),
                  GButton(
                    icon: Icons.tv,
                    text: 'Noticias',
                    iconActiveColor: Colors.white,
                    textColor: Colors.white,
                  )
                ]),
          ),
        ));
  }
}

class ListaBotones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Row(
      children: <Widget>[
        IconButton(
            onPressed: () => theme.setTheme(ThemeData.light()),
            icon: const Icon(Icons.light_mode_rounded)),
        IconButton(
            onPressed: () => theme.setTheme(ThemeData.dark()),
            icon: const Icon(Icons.nightlight_outlined)),
      ],
    );
  }
}
