import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWigdet extends StatefulWidget {
  const DrawerWigdet({super.key});

  @override
  State<DrawerWigdet> createState() => _DrawerWigdetState();
}

class _DrawerWigdetState extends State<DrawerWigdet> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: const Border(left: BorderSide.none),
        backgroundColor: const Color(0xfffecf1f7),
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
                  iconColor: Color.fromARGB(255, 84, 82, 82),
                  enabled: true,
                  title: const Text('SIATH',
                      style: TextStyle(
                          color: Color.fromARGB(255, 84, 82, 82),
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
                  iconColor: const Color.fromARGB(255, 100, 97, 93),
                  enabled: true,
                  hoverColor: const Color.fromARGB(255, 234, 205, 167),
                  title: const Text('BIENESTAR',
                      style: TextStyle(
                          color: Color.fromARGB(255, 84, 82, 82),
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
                              color: Color.fromARGB(255, 84, 82, 82),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        iconColor: const Color.fromARGB(255, 84, 82, 82),
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
                              color: Color.fromARGB(255, 84, 82, 82),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        iconColor: const Color.fromARGB(255, 84, 82, 82),
                        enabled: true,
                        onTap: () async {
                          final url = Uri.parse('https://www.eltiempo.com/');
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
                              color: Color.fromARGB(255, 84, 82, 82),
                              fontWeight: FontWeight.w400,
                              fontSize: 11),
                        ),
                        iconColor: const Color.fromARGB(255, 84, 82, 82),
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
                        color: Color.fromARGB(255, 84, 82, 82),
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                  iconColor: const Color.fromARGB(255, 84, 82, 82),
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
                        color: Color.fromARGB(255, 84, 82, 82),
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                  iconColor: const Color.fromARGB(255, 84, 82, 82),
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
                height: 180,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        elevation: 5.2,
                        padding: const EdgeInsets.only(top: 0, right: 100),
                        // textStyle: TextStyle(decoration: TextDecoration.underline),
                        // backgroundColor: const Color(0xfff921b21),
                        foregroundColor:
                            const Color.fromARGB(255, 101, 100, 100)),
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
            ]));
  }
}
