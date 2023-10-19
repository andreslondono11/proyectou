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
        backgroundColor: const Color.fromARGB(255, 253, 253, 253),
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
                  iconColor: const Color.fromARGB(255, 26, 21, 168),
                  enabled: true,
                  hoverColor: const Color.fromARGB(255, 234, 205, 167),
                  title: const Text('SIATH',
                      style: TextStyle(
                          color: Color.fromARGB(255, 26, 21, 168),
                          fontWeight: FontWeight.bold,
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
                  title: const Text('Convenios Insitucionales',
                      style: TextStyle(
                          color: Color.fromARGB(255, 26, 21, 168),
                          fontWeight: FontWeight.bold,
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
                height: 20,
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
                        // fontSize: 18,
                        decoration: TextDecoration.none)),
              ),
              // DrawerHeader(
              //   curve: Curves.bounceIn,
              //   margin: EdgeInsets.only(top: 0, bottom: 20, left: 0),
              //   padding: EdgeInsets.only(top: 10, bottom: 0, left: 0),
              //   // decoration: BoxDecoration(
              //   //     border: Border.fromBorderSide(BorderSide.none),
              //   //     shape: BoxShape.circle,
              //   //     color: Color.fromARGB(255, 250, 247, 247),
              //   //     image: DecorationImage(
              //   //         fit: BoxFit.contain,
              //   //         image: AssetImage('assets/images/launcher.png'))),
              //   // duration: Duration(microseconds: 20),
              //   child: Text('PROYECTO U',
              //       textAlign: TextAlign.center,
              //       style: TextStyle(fontWeight: FontWeight.bold)),
              // ),
              // Text(
              //   'Destacados',
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //       fontStyle: FontStyle.normal, fontWeight: FontWeight.w400),
              // ),

              // const Divider(
              //   color: Color(0xfff921b21),
              //   endIndent: 30,
              //   thickness: 0.30,
              //   height: 0,
              //   indent: 30,
              // ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                        leading: const Icon(Icons.chrome_reader_mode_outlined),
                        title: const Text(
                          'REVISTA SEMANA',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w600,
                              fontSize: 11),
                        ),
                        iconColor: const Color.fromARGB(255, 9, 9, 9),
                        enabled: true,
                        hoverColor: const Color.fromARGB(255, 30, 231, 231),
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
                    ListTile(
                        leading: const Icon(Icons.chrome_reader_mode_outlined),
                        title: const Text(
                          'REVISTA EL TIEMPO',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w600,
                              fontSize: 11),
                        ),
                        iconColor: Color.fromARGB(255, 9, 9, 9),
                        enabled: true,
                        hoverColor: const Color.fromARGB(255, 30, 231, 231),
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
                    ListTile(
                        leading: const Icon(Icons.chrome_reader_mode_outlined),
                        title: const Text(
                          'REVISTA EL ESPECTADOR',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.w600,
                              fontSize: 11),
                        ),
                        iconColor: Color.fromARGB(255, 9, 9, 9),
                        enabled: true,
                        hoverColor: const Color.fromARGB(255, 30, 231, 231),
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
                  ],
                ),
              ),
            ]));
  }
}
