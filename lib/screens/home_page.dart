//libreria principal
import 'package:flutter/material.dart';
//libreria de terceros
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:url_launcher/url_launcher.dart';
//esta libreria de los scafold
import 'package:proyectou/screens/page1.dart';
import 'package:proyectou/screens/page2.dart';
import 'package:proyectou/screens/page3.dart';
import 'package:proyectou/screens/page4.dart';
import 'package:proyectou/bloc/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RateMyApp rateMyApp = RateMyApp(
    minDays: 0,
    remindLaunches: 6,
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
          message:
              'Estamos trabajando en importantes mejoras en tu aplicacion, agradeceremos tu gran Opinion ',
          rateButton: 'CALIFICA',
          noButton: 'No Gracias',
          laterButton: 'Quizas Mas tarde',
          onDismissed: () =>
              rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
        );
      }
    });
    super.initState();
  }

  int _currentIndex = 0;

  final screens = const [Page1(), Page2(), Page3(), Page4()];

  final colori = [
    Colors.blue,
    const Color.fromARGB(255, 160, 19, 9),
    Colors.green,
    const Color.fromARGB(255, 222, 142, 237)
  ];
  final text = [
    const Text(
      'INICIO',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    const Text(
      'SERVICIOS',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    const Text(
      'DOCTRINA',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    const Text(
      'NOTICIAS',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        themeMode: ThemeMode.system,
        home: Scaffold(
          drawer: Drawer(
              shadowColor: colori[_currentIndex],
              elevation: 10.20,
              shape: const Border(left: BorderSide.none),
              width: 280,
              child: ListView(
                  // Importante: elimine cualquier padding del ListView.

                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10),
                      child: Text('Proyecto U',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              decoration: TextDecoration.none)),
                    ),
                    ListTile(
                        leading: const Icon(Icons.assistant_navigation),
                        enabled: true,
                        title: const Text('SIATH',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                        onTap: () async {
                          final url = Uri.parse(
                              'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url,
                                mode: LaunchMode.platformDefault,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                        enableDomStorage: true,
                                        enableJavaScript: true));
                            ('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    ListTile(
                        leading: const Icon(Icons.family_restroom),
                        enabled: true,
                        title: const Text('BIENESTAR',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                        onTap: () async {
                          final url = Uri.parse(
                              'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            (
                              'Cliked',
                              mode: LaunchMode.inAppWebView,
                              webViewConfiguration: const WebViewConfiguration(
                                  enableDomStorage: true,
                                  enableJavaScript: true)
                            );
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
                                    fontWeight: FontWeight.w400, fontSize: 11),
                              ),
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
                                  ('Cliked');
                                  // Actualiza el estado de la aplicación
                                  // ...
                                }
                              }),
                          ListTile(
                              leading: const Icon(Icons.note_outlined),
                              title: const Text(
                                'EL TIEMPO',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 11),
                              ),
                              enabled: true,
                              onTap: () async {
                                final url =
                                    Uri.parse('https://www.eltiempo.com/');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url,
                                      mode: LaunchMode.inAppWebView,
                                      webViewConfiguration:
                                          const WebViewConfiguration(
                                              enableDomStorage: true,
                                              enableJavaScript: true));

                                  ('Cliked');
                                  // Actualiza el estado de la aplicación
                                  // ...
                                }
                              }),
                          ListTile(
                              leading: const Icon(Icons.note_outlined),
                              title: const Text(
                                'EL ESPECTADOR',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 11),
                              ),
                              enabled: true,
                              onTap: () async {
                                final url =
                                    Uri.parse('https://www.elespectador.com/');
                                if (await canLaunchUrl(url)) {
                                  await launchUrl(url,
                                      mode: LaunchMode.inAppWebView,
                                      webViewConfiguration:
                                          const WebViewConfiguration(
                                              enableDomStorage: true,
                                              enableJavaScript: true));
                                  ('Cliked');
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
                              decoration: TextDecoration.none)),
                    ),
                    ListTile(
                        leading: const Icon(Icons.radio_sharp),
                        title: const Text(
                          'EMISORAS ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11),
                        ),
                        enabled: false,
                        onTap: () async {
                          final url = Uri.parse(
                              'https://play.google.com/store/apps/details?id=com.proximate.caja_honor');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            ('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    ListTile(
                        leading: const Icon(Icons.cast_for_education_outlined),
                        title: const Text(
                          'DOCTRINA MILITAR',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11),
                        ),
                        enabled: true,
                        onTap: () async {
                          final url = Uri.parse(
                              'https://play.google.com/store/apps/details?id=co.mil.ejercito.doctrina');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            ('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    ListTile(
                        leading: const Icon(Icons.home_work_outlined),
                        title: const Text(
                          'CAJA DE HONOR',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 11),
                        ),
                        enabled: true,
                        onTap: () async {
                          final url = Uri.parse(
                              'https://play.google.com/store/apps/details?id=com.proximate.caja_honor');
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                            ('Cliked');
                            // Actualiza el estado de la aplicación
                            // ...
                          }
                        }),
                    const SizedBox(
                      height: 10,
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
                              decoration: TextDecoration.none)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 30),
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ListaBotones(),
                    ),
                    Column(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            elevation: 5.2,
                            padding: const EdgeInsets.only(top: 0, right: 100),
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
                              ('Cliked');
                            }
                          },
                        ),
                      ],
                    )
                  ])),
          appBar: AppBar(
            shadowColor: colori[_currentIndex],
            elevation: .9,
            toolbarHeight: 42,
            title: text[_currentIndex],
            centerTitle: true,
          ),
          body: screens[_currentIndex],
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            margin: const EdgeInsets.only(bottom: 18, right: 0),
            child: GNav(
                tabBorderRadius: 9000,
                padding: const EdgeInsets.all(15),
                color: colori[_currentIndex],
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

// ignore: use_key_in_widget_constructors
class ListaBotones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return Row(
      children: <Widget>[
        const Text('Dia'),
        IconButton(
            onPressed: () => theme.setTheme(ThemeData.light()),
            icon: const Icon(Icons.light_mode_rounded)),
        const Text('Noche'),
        IconButton(
            onPressed: () => theme.setTheme(ThemeData.dark()),
            icon: const Icon(Icons.nightlight_outlined)),
      ],
    );
  }
}
