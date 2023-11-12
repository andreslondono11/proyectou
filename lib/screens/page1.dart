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
  final Orientation orientation = Orientation.landscape;

  Widget potraitWidget(Size size) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            'APLICACIONES DESTACADAS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.40,
              height: size.height * 0.1,
              child: const Image(
                  width: 250, image: AssetImage('assets/images/siathmnd.png')),
            ),
            SizedBox(
                width: size.width * 0.5,
                // height: size.height * 0.1,
                child: const Center(
                  child: Text(
                    'Ingrese al portal web y descargue desprendibles, certificaciones y otros documentos relacionados con su hoja de vida.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 12),
                  ),
                )),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: TextButton(
                  style: TextButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color(0xff921b21),
                      shape: const BeveledRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
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
                  child: const Text(
                    'Ingresa Aqui',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 10.5, fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color(0xff921b21),
              endIndent: 10,
              thickness: 0.3,
              height: 20,
              indent: 20,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: size.width * 0.49,
                height: size.height * 0.2,
                child: const Center(
                  child: Text(
                    'Bienvenido a nuestro portal de trámites en línea para el Subsistema de Salud de las Fuerzas Militares.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 12),
                  ),
                )),
            SizedBox(
              width: size.width * 0.40,
              height: size.height * 0.2,
              child: const Image(image: AssetImage('assets/images/salud.png')),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: TextButton(
                  style: TextButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color(0xff921b21),
                      shape: const BeveledRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () async {
                    final url = Uri.parse('https://portal.saludsis.mil.co/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                      ('Clikec');
                    }
                  },
                  child: const Text(
                    'Ingresa Aqui',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        const Divider(
          color: Color(0xff921b21),
          endIndent: 10,
          thickness: 0.3,
          height: 20,
          indent: 20,
        ),
        SizedBox(
          // decoration:
          //     // const BoxDecoration(color: Color.fromARGB(206, 207, 152, 152)),
          width: size.width * 100,
          height: size.height * 0.25,
          child: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Text(
              'La aplicación Nace el año 2020, con el objetivo de facilitar las tareas administrativas de todos los miembros de la Institución. Agradecimiento especial al Batallón de Fuerzas Especiales Urbanas No 2, por la motivación que me dieron día a día y llevar todo el proyecto a nivel nacional ratificando el compromiso voluntario de ser un engranaje importante del Ejercito Nacional, por eso declaro que esta aplicación es totalmente libre y solo espero responsabilidad en el uso de los servicios.',
              style: TextStyle(
                  fontSize: 12, decorationStyle: TextDecorationStyle.double),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }

// para pantalla landscape
  Widget landscapewidget(Size size) {
    return ListView(
      padding: const EdgeInsets.only(top: 0, bottom: 0),
      children: [
        const Text(
          'APLICACIONES DESTACADAS',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.2,
              height: size.height * 0.2,
              child:
                  const Image(image: AssetImage('assets/images/siathmnd.png')),
            ),
            SizedBox(
                width: size.width * 0.3,
                height: size.height * 0.2,
                child: const Center(
                    child: Text(
                  'Ingrese al portal web y descargue desprendibles, certificaciones y otros documentos relacionados con su hoja de vida.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 13),
                ))),
            SizedBox(
              width: size.width * 0.2,
              height: size.height * 0.3,
              child: const Image(image: AssetImage('assets/images/salud.png')),
            ),
            SizedBox(
                width: size.width * 0.3,
                height: size.height * 0.2,
                child: const Center(
                  child: Text(
                    'Bienvenido a nuestro portal de trámites en línea para el Subsistema de Salud de las Fuerzas Militares.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 13),
                  ),
                )),
          ],
        ),

        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                // decoration: const BoxDecoration(
                //     color: Color.fromARGB(206, 207, 152, 152)),
                width: size.width * .01,
                height: size.height * 0.07),
            SizedBox(
              width: size.width * .14,
              height: size.height * 0.085,
              child: TextButton(
                  style: TextButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color(0xff921b21),
                      shape: const BeveledRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
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
                  child: const Text(
                    'Ingresa Aqui',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  )),
            ),
            SizedBox(width: size.width * .39, height: size.height * 0),
            SizedBox(
              width: size.width * 0.15,
              height: size.height * 0.085,
              child: TextButton(
                  style: TextButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color(0xff921b21),
                      shape: const BeveledRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white),
                  onPressed: () async {
                    final url = Uri.parse('https://portal.saludsis.mil.co/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                      ('Clikec');
                    }
                  },
                  child: const Text(
                    'Ingresa Aqui',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12),
                  )),
            ),
          ],
        ),

        const SizedBox(
          height: 10,
        ),
        const Divider(
          color: Color(0xff921b21),
          endIndent: 10,
          thickness: 0.3,
          height: 20,
          indent: 20,
        ),

        // Row(

        const SizedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 0),
            child: Text(
              'La aplicación Nace el año 2020, con el objetivo de facilitar las tareas administrativas de todos los miembros de la Institución. Agradecimiento especial al Batallón de Fuerzas Especiales Urbanas No 2, por la motivación que me dieron día a día y llevar todo el proyecto a nivel nacional ratificando el compromiso voluntario de ser un engranaje importante del Ejercito Nacional, por eso declaro que esta aplicación es totalmente libre y solo espero responsabilidad en el uso de los servicios.',
              style: TextStyle(
                  fontSize: 14, decorationStyle: TextDecorationStyle.double),
              textAlign: TextAlign.justify,
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    var mediaQuery = MediaQuery.of(context);
    // Size size = mediaQuery.size;

    // ("Ancho:${size.width}");
    // ("Altura:${size.height}");
    return MaterialApp(
        theme: theme.getTheme(),
        debugShowCheckedModeBanner: false,
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
}
//

