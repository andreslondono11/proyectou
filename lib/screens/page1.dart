import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:url_launcher/url_launcher.dart';

import '../bloc/theme.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        theme: theme.getTheme(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
    height: 14,
  ));
}

Widget boton1() {
  return Container(
    margin: const EdgeInsets.only(right: 200, left: 10),
    child: TextButton(
        style: TextButton.styleFrom(
            elevation: 10,
            shadowColor: const Color(0xff921b21),
            shape: const BeveledRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40))),
            padding: const EdgeInsets.all(1.0),
            minimumSize: const Size(30, 30),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white),
        onPressed: () async {
          final url = Uri.parse(
              'https://portalapp.mindefensa.gov.co:8449/siathweb-app/#/inicio');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
            ('Clikec');
          }
        },
        child: const Text('Ingresa Aqui')),
  );
}

Widget boton2() {
  return Container(
    margin: const EdgeInsets.only(right: 50, left: 150),
    child: TextButton(
        style: TextButton.styleFrom(
            elevation: 10,
            shadowColor: const Color(0xff921b21),
            shape: const BeveledRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40))),
            padding: const EdgeInsets.all(1.0),
            minimumSize: const Size(30, 30),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white),
        onPressed: () async {
          final url = Uri.parse('https://portal.saludsis.mil.co/');
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
            ('Clikec');
          }
        },
        child: const Text('Ingresa Aqui')),
  );
}

Widget texto1() {
  return const Padding(
    padding: EdgeInsets.only(top: 20, bottom: 20),
    child: Text(
      'APLICACIONES DESTACADAS',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    ),
  );
}

Widget division() {
  return const Divider(
    endIndent: 50,
    indent: 50,
    thickness: .25,
    color: Colors.blue,
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
