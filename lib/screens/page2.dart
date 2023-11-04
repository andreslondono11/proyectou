import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectou/bloc/theme.dart';

// import 'package:unwebsiath/screens/page4.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:unwebsiath/screens/page4.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          // drawerDragStartBehavior: DragStartBehavior.down,

          body: ListView(
        children: [
          img1(),
          texto1(),
          const SizedBox(
            height: 5,
          ),

          cei(),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Color(0xff921b21),
            endIndent: 10,
            thickness: 0.3,
            height: 20,
            indent: 20,
          ),
          img2(),
          const SizedBox(
            height: 3,
          ),
          boton1(),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Color(0xff921b21),
            endIndent: 10,
            thickness: 0.3,
            height: 20,
            indent: 20,
          ),
          img3(),
          const SizedBox(
            height: 3,
          ),
          boton2(),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            color: Color(0xff921b21),
            endIndent: 10,
            thickness: 0.3,
            height: 20,
            indent: 20,
          ),
          img4(),
          const SizedBox(
            height: 3,
          ),
          boton3(),

          // margen1(),
          // linea1(),
          // margen2(),
        ],
      )),
    );
  }
}

Image img1() {
  return const Image(
    width: 800,
    image: AssetImage('assets/images/correov.png'),
  );
}

Padding texto1() {
  return const Padding(
    padding: EdgeInsets.only(top: 3, right: 12, left: 13),
    child: Text(
      'Ingresa al Correo Institucional del Ejercito Nacional, a traves de ellos puedes enviar y recibir correos',
      textAlign: TextAlign.center,
    ),
  );
}

Widget cei() {
  return (Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          margin: const EdgeInsets.only(right: 0, left: 0, bottom: 10),
          padding: const EdgeInsets.only(
            right: 00,
            left: 0,
          ),
          child: TextButton(
              style: TextButton.styleFrom(
                  elevation: 10,
                  shadowColor: const Color(0xff921b21),
                  shape: const BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(40))),
                  backgroundColor: const Color(0xff921b21),
                  foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
              onPressed: () async {
                final url = Uri.parse('https://correo.buzonejercito.mil.co/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  ('Cliked');
                }
              },
              child: const Text(
                'Oficiales-Suboficiales-Civiles',
                style: TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
              ))),
      Container(
          margin: const EdgeInsets.only(right: 0, left: 0, bottom: 10),
          padding: const EdgeInsets.only(right: 0, left: 0),
          child: TextButton(
              style: TextButton.styleFrom(
                  elevation: 10,
                  shadowColor: const Color(0xff921b21),
                  shape: const BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(40))),
                  backgroundColor: const Color(0xff921b21),
                  foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
              onPressed: () async {
                final url = Uri.parse('https://correo1.buzonejercito.mil.co/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  ('Cliked');
                }
              },
              child: const Text('Soldados Profesionales- OperServicios',
                  style: TextStyle(
                    fontSize: 7,
                    fontWeight: FontWeight.bold,
                  )))),
    ],
  ));
}

Widget img2() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Image(
        width: 200,
        image: AssetImage('assets/images/siweb.png'),
      ),
      SizedBox(
        width: 120,
        child: Text(
          'El Comando del Ejercito Nacional a traves del Talento Humano pone a disposicion los servicios de Notificacion de Cursos, traslados',
          style: TextStyle(fontSize: 10.5),
          textAlign: TextAlign.left,
        ),
      ),
    ],
  );
}

Widget boton1() {
  return Container(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      margin: const EdgeInsets.only(right: 150, left: 10, bottom: 0),
      child: TextButton(
          style: TextButton.styleFrom(
              elevation: 10,
              shape: const BeveledRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40))),
              shadowColor: const Color(0xff921b21),
              backgroundColor: const Color(0xff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url =
                Uri.parse('https://caocc.ejercito.mil.co:4443/SiwepDiper-web/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              ('Cliked');
            }
          },
          child: const Text(
            'INGRESA AQUI',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
          )));
}

Widget img3() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      SizedBox(
        width: 120,
        child: Text(
          'El Comando del Ejercito Nacional a traves de la Oficina Servicio al Ciudadano pone a disposicion este espacio para realizar solicitudes y  PQRS',
          style: TextStyle(fontSize: 10.5),
          textAlign: TextAlign.left,
        ),
      ),
      Image(
        height: 110,
        image: AssetImage('assets/images/sac.png'),
      ),
    ],
  );
}

Widget img4() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Image(
        height: 110,
        image: AssetImage('assets/images/fovid.png'),
      ),
      SizedBox(
        width: 120,
        child: Text(
          'El Comando del Ejercito Nacional a traves del Talento Humano pone a disposicion tu folio de vida digital para aceptar tus ultimas anotaciones',
          style: TextStyle(fontSize: 10.5),
          textAlign: TextAlign.left,
        ),
      ),
    ],
  );
}

Widget boton2() {
  return Container(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      margin: const EdgeInsets.only(right: 10, left: 151, bottom: 0),
      child: TextButton(
          style: TextButton.styleFrom(
              elevation: 10,
              shape: const BeveledRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40))),
              shadowColor: const Color(0xff921b21),
              backgroundColor: const Color(0xff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url = Uri.parse('https://www.pqr.mil.co/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              ('Cliked');
            }
          },
          child: const Text(
            'INGRESA AQUI ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          )));
}

Widget boton3() {
  return Container(
      padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      margin: const EdgeInsets.only(right: 152, left: 10, bottom: 0),
      child: TextButton(
          style: TextButton.styleFrom(
              elevation: 10,
              shape: const BeveledRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(40))),
              shadowColor: const Color(0xff921b21),
              backgroundColor: const Color(0xff921b21),
              foregroundColor: const Color.fromARGB(255, 241, 242, 242)),
          onPressed: () async {
            final url =
                Uri.parse('https://fovid.ejercito.mil.co:4443/Fovid-2.0/');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
              ('Cliked');
            }
          },
          child: const Text(
            'INGRESA  AQUI',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
          )));
}
