import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../drawer/lateral.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData.from(
            colorScheme: const ColorScheme(
                brightness: Brightness.light,
                primary: Color.fromARGB(255, 52, 2, 2),
                onPrimary: Color.fromARGB(255, 47, 7, 7),
                secondary: Color.fromARGB(255, 10, 54, 99),
                onSecondary: Color.fromARGB(255, 35, 37, 36),
                error: Color.fromARGB(255, 223, 39, 39),
                onError: Color.fromARGB(255, 111, 25, 25),
                background: Color.fromARGB(255, 72, 71, 71),
                onBackground: Color.fromARGB(255, 228, 7, 7),
                surface: Color.fromARGB(255, 163, 157, 157),
                onSurface: Color.fromARGB(255, 247, 241, 241))),
        themeMode: _themeMode,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: const DrawerWigdet(),
            appBar: AppBar(
              actions: [
                IconButton(
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    constraints: const BoxConstraints(maxWidth: 10),
                    isSelected: true,
                    iconSize: 18,
                    padding: const EdgeInsets.only(left: 10),
                    color: const Color.fromARGB(255, 243, 170, 33),
                    onPressed: () {
                      changeTheme(ThemeMode.light);
                    },
                    icon: const Icon(
                      Icons.light_mode,
                      semanticLabel: 'Modo Luz',
                      // color: Colors.amber,
                    )),
                IconButton(
                    padding: const EdgeInsets.only(right: 15),
                    color: Colors.white,
                    iconSize: 18,
                    onPressed: () {
                      changeTheme(ThemeMode.dark);
                    },
                    icon: const Icon(
                      Icons.dark_mode,
                      semanticLabel: 'Modo Oscuro',
                    ))
              ],
              iconTheme: const IconThemeData(
                  color: Color.fromARGB(255, 255, 255, 255)),
              backgroundColor: const Color(0xfff921b21),
              elevation: 10.2,
              shadowColor: Colors.blueGrey,
              title: const Text(
                'Inicios',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            body: ListView(
              children: [
                texto1(),
                colunma1(),
                boton1(),
                espacio(),
                colunma2(),
                boton2(),
                division(),
                espacio(),
                texto2(),
              ],
            )));
  }
}

Widget colunma1() {
  return const Row(
    children: [
      Image(width: 190, image: AssetImage('assets/images/siathmnd.png')),
      SizedBox(
        width: 140,
        child: Text(
            'Ingrese al portal web y descargue desprendibles, certificaciones y otros documentos relacionados con su hoja de vida.',
            textAlign: TextAlign.justify),
      ),
    ],
  );
}

Widget colunma2() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 130,
        child: Text(
            'Bienvenido a nuestro portal de trámites en línea para el Subsistema de Salud de las Fuerzas Militares.',
            textAlign: TextAlign.justify),
      ),
      Image(width: 190, image: AssetImage('assets/images/salud.png')),
    ],
  );
}

Widget espacio() {
  return (const SizedBox(
    height: 20,
  ));
}

Widget boton1() {
  return Container(
    margin: const EdgeInsets.only(right: 250, left: 10),
    child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(1.0),
            minimumSize: const Size(30, 30),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white),
        onPressed: () async {
          final url = Uri.parse(
              'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
            print('Clikec');
          }
        },
        child: const Text('Ingresa Aqui')),
  );
}

Widget boton2() {
  return Container(
    margin: const EdgeInsets.only(right: 10, left: 250),
    child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(1.0),
            minimumSize: const Size(30, 30),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white),
        onPressed: () async {
          final url = Uri.parse('https://portal.saludsis.mil.co/');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
            print('Clikec');
          }
        },
        child: const Text('Ingresa Aqui')),
  );
}

Widget texto1() {
  return const Padding(
    padding: EdgeInsets.only(top: 20, bottom: 20),
    child: Text(
      'PROYECTO U',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xfff921b21)),
    ),
  );
}

Widget division() {
  return const Divider(
    endIndent: 50,
    indent: 50,
    thickness: 2.05,
    color: Color.fromARGB(255, 239, 234, 234),
  );
}

Widget texto2() {
  return Container(
    margin: const EdgeInsets.only(left: 20, right: 20),
    child: const Text(
      'La aplicación Nace el año 2020, con el objetivo de facilitar las tareas administrativas de todos los miembros de la Institución. Agradecimiento especial al Batallón de Fuerzas Especiales Urbanas No 2, por la motivación que me dieron día a día y llevar todo el proyecto a nivel nacional ratificando el compromiso voluntario de ser un engranaje importante del Ejercito Nacional, por eso declaro que esta aplicación es totalmente libre y solo espero responsabilidad en el uso de los servicios.',
      style: TextStyle(
          color: Color.fromARGB(255, 142, 148, 150),
          fontSize: 12,
          decorationStyle: TextDecorationStyle.double),
      textAlign: TextAlign.justify,
    ),
  );
}
