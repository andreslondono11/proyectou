//libreria principal

import 'package:flutter/material.dart';
//libreria de terceros
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:proyectou/screens/configuracion.dart';
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

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    ("Ancho:${size.width}");
    ("Altura:${size.height}");

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        themeMode: ThemeMode.system,
        home: Scaffold(
          body: Builder(builder: (context) {
            if (mediaQuery.orientation == Orientation.portrait) {
              return potraitWidget(mediaQuery.size);
            } else {
              return landscapewidget(mediaQuery.size);
            }
          }),
        ));
  }

  // home:
}

// ignore: use_key_in_widget_constructors

Widget potraitWidget(Size size) {
  final coloria = [
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
      'EDUCACION',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    const Text(
      'NOTICIAS',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
  ];

  int currentIndex = 0;
  return Scaffold(
    drawer: SizedBox(
      width: size.width * .75,
      height: size.height * .80,
      child: Drawer(
          shadowColor: coloria[currentIndex],
          elevation: 10.20,
          // shape: const Border(left: BorderSide.none),
          child: ListView(
              // Importante: elimine cualquier padding del ListView.

              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 0, bottom: 0),
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
                            webViewConfiguration: const WebViewConfiguration(
                                enableDomStorage: true,
                                enableJavaScript: true));
                        ('Cliked');
                        // Actualiza el estado de la aplicación
                        // ...
                      }
                    }),
                ListTile(
                    minVerticalPadding: 0,
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
                              enableDomStorage: true, enableJavaScript: true)
                        );
                        // Actualiza el estado de la aplicación
                        // ...
                      }
                    }),
                ListTile(
                    minVerticalPadding: 0,
                    leading: const Icon(Icons.radio_sharp),
                    title: const Text(
                      'EMISORAS ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                    ),
                    enabled: true,
                    onTap: () async {
                      final url = Uri.parse(
                          'https://sites.google.com/view/emisoraspz/p%C3%A1gina-principal');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url, mode: LaunchMode.inAppWebView);
                        ('Cliked');
                        // Actualiza el estado de la aplicación
                        // ...
                      }
                    }),
                // SizedBox(
                //   // height: size.height * .91,
                //   height: size.height * .005,
                // ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 0),
                  child: Text('REVISTAS INFORMATIVAS ',
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
                            final url = Uri.parse('https://www.semana.com/');
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
                            final url = Uri.parse('https://www.eltiempo.com/');
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
                // SizedBox(
                //   height: size.height * .01,
                // ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 0),
                  child: Text('APLICACIONES RECOMENDADAS ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: AutofillHints.birthdayMonth,
                          decorationStyle: TextDecorationStyle.solid,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none)),
                ),
                ListTile(
                    leading: const Icon(Icons.cast_for_education_outlined),
                    title: const Text(
                      'DOCTRINA MILITAR',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
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
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
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
                // SizedBox(
                //   height: size.height * .01,
                // ),
                const SizedBox(
                  child: Cofi(),
                ),
              ])),
    ),
    appBar: AppBar(
      shadowColor: coloria[currentIndex],
      elevation: .9,
      toolbarHeight: 42,
      title: text[currentIndex],
      centerTitle: true,
    ),
    body: const BotonNE(),
  );
}

Widget landscapewidget(Size size) {
  final coloria = [
    Colors.blue,
    const Color.fromARGB(255, 160, 19, 9),
    Colors.green,
    const Color.fromARGB(255, 222, 142, 237)
  ];
  final text1 = [const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)];
  final text2 = [const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)];
  int currentIndex = 0;
  return Scaffold(
    drawer: SizedBox(
        width: size.width * .85,
        height: size.height * .85,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Institucional', style: text1[currentIndex]),
                    Container(
                        padding: const EdgeInsets.only(left: 20, right: 0),
                        child:
                            Text('Informativas', style: text1[currentIndex])),
                    Text('Recomendadas', style: text1[currentIndex])
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 30),
                            child: const Icon(
                              Icons.assistant_navigation,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 30),
                            child: Text(
                              'Siath',
                              style: text2[currentIndex],
                            ),
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                          ('Cliked');
                        }
                      },
                    ),
                    TextButton(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.article,
                            size: 30,
                          ),
                          Text(
                            'Semana',
                            style: text2[currentIndex],
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse('https://www.semana.com/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.inAppWebView);
                          ('Cliked');
                        }
                      },
                    ),
                    TextButton(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.cast_for_education,
                            size: 30,
                          ),
                          Text(
                            'Doctrina',
                            style: text2[currentIndex],
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://play.google.com/store/apps/details?id=co.mil.ejercito.doctrina');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                          ('Cliked');
                        }
                      },
                    )
                  ],
                ),
              ),
              //aqui termina el prime menu
              Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 30),
                            child: const Icon(
                              Icons.family_restroom,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 30),
                            child: Text(
                              'Bienestar',
                              style: text2[currentIndex],
                            ),
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                          ('Cliked');
                        }
                      },
                    ),
                    TextButton(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 8),
                            child: const Icon(
                              Icons.article,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 4),
                            child: Text(
                              'El Tiempo',
                              style: text2[currentIndex],
                            ),
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse('https://www.eltiempo.com/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.inAppWebView);
                          ('Cliked');
                        }
                      },
                    ),
                    TextButton(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 0, right: 10),
                            child: const Icon(
                              Icons.home_work_outlined,
                              size: 30,
                            ),
                          ),
                          Text(
                            'Caja Honor',
                            style: text2[currentIndex],
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://play.google.com/store/apps/details?id=com.proximate.caja_honor');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                          ('Cliked');
                        }
                      },
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 100, right: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.radio,
                            size: 30,
                          ),
                          Text(
                            '    Emisora',
                            style: text2[currentIndex],
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://sites.google.com/view/emisoraspz/p%C3%A1gina-principal');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.inAppWebView);
                          ('Cliked');
                        }
                      },
                    ),
                    TextButton(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 30, right: 0),
                            child: const Icon(
                              Icons.article,
                              size: 30,
                            ),
                          ),
                          Text(
                            'El Espectador',
                            style: text2[currentIndex],
                          )
                        ],
                      ),
                      onPressed: () async {
                        final url = Uri.parse('https://www.elespectador.com/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.inAppWebView);
                          ('Cliked');
                        }
                      },
                    ),
                    const SizedBox(
                      child: Cofi2(),
                    )
                  ],
                ),
              )
            ],
          ),

          //
        )),
    appBar: AppBar(
      leadingWidth: 60,

      shadowColor: coloria[currentIndex],
      elevation: .9,

      toolbarHeight: 25,
      iconTheme: const IconThemeData(size: 20, fill: 0),
      // title: text[_currentIndex],
      centerTitle: true,
    ),
    body: const BotonNE(),
  );
}

class Cofi extends StatelessWidget {
  const Cofi({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'CONFIGURACIÓN',
      ),
      leading: const Icon(Icons.settings),
      onTap: () => {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ConfiguracionNota()))
      },
    );
  }
}

class BotonNE extends StatefulWidget {
  const BotonNE({super.key});

  @override
  State<BotonNE> createState() => _BotonNEState();
}

class _BotonNEState extends State<BotonNE> {
  final colori = [
    Colors.blue,
    const Color.fromARGB(255, 160, 19, 9),
    Colors.green,
    const Color.fromARGB(255, 222, 142, 237)
  ];
  final screens = const [Page1(), Page2(), Page3(), Page4()];
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
      'EDUCACION',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
    const Text(
      'NOTICIAS',
      style: TextStyle(fontWeight: FontWeight.w300),
    ),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        //

        margin: const EdgeInsets.only(bottom: 1, right: 0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: GNav(
              tabBorderRadius: 9000,
              padding:
                  const EdgeInsets.only(top: 6, bottom: 12, left: 6, right: 6),
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
                  text: 'Educacion',
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
      ),
    );
  }
}

class Cofi2 extends StatefulWidget {
  const Cofi2({super.key});

  @override
  State<Cofi2> createState() => _Cofi2State();
}

class _Cofi2State extends State<Cofi2> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: const Column(children: [
        Icon(
          Icons.settings,
          size: 30,
        ),
        Text(
          'Configuracion',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ]),
      onPressed: () => {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ConfiguracionNota()))
      },
    );
  }
}
