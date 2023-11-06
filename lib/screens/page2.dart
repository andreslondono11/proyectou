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
    var mediaQuery = MediaQuery.of(context);

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

  Widget potraitWidget(Size size) {
    return ListView(
      children: [
        const SizedBox(
          child: Image(
            image: AssetImage('assets/images/correov.png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 3, right: 12, left: 13),
          child: Text(
            'Ingresa al Correo Institucional del Ejercito Nacional, a traves de ellos puedes enviar y recibir correos',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: size.width * .5,
                height: size.height * .05,
                child: TextButton(
                    style: TextButton.styleFrom(
                        elevation: 10,
                        shadowColor: const Color(0xff921b21),
                        shape: const BeveledRectangleBorder(
                            side: BorderSide(style: BorderStyle.none),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        backgroundColor: const Color(0xff921b21),
                        foregroundColor:
                            const Color.fromARGB(255, 241, 242, 242)),
                    onPressed: () async {
                      final url =
                          Uri.parse('https://correo.buzonejercito.mil.co/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                        ('Cliked');
                      }
                    },
                    child: const Text(
                      'Oficiales-Suboficiales-Civiles',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
                width: size.width * .45,
                child: TextButton(
                    style: TextButton.styleFrom(
                        elevation: 10,
                        shadowColor: const Color(0xff921b21),
                        shape: const BeveledRectangleBorder(
                            side: BorderSide(style: BorderStyle.none),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        backgroundColor: const Color(0xff921b21),
                        foregroundColor:
                            const Color.fromARGB(255, 241, 242, 242)),
                    onPressed: () async {
                      final url =
                          Uri.parse('https://correo1.buzonejercito.mil.co/');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                        ('Cliked');
                      }
                    },
                    child: const Text('Soldados Profesionales- OperServicios',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        )))),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.width * 0.45,
              height: size.height * .12,
              child: const Image(
                image: AssetImage('assets/images/siweb.png'),
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.48,
                      height: size.height * 0.08,
                      child: const Text(
                        'El Comando del Ejercito Nacional a traves del Talento Humano pone a disposicion los servicios de Notificacion de Cursos, traslados',
                        style: TextStyle(fontSize: 9),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.03,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                shadowColor: const Color(0xff921b21),
                                shape: const BeveledRectangleBorder(
                                    side: BorderSide(style: BorderStyle.none),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                backgroundColor: const Color(0xff921b21),
                                foregroundColor:
                                    const Color.fromARGB(255, 241, 242, 242)),
                            onPressed: () async {
                              final url = Uri.parse(
                                  'https://caocc.ejercito.mil.co:4443/SiwepDiper-web/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                                ('Cliked');
                              }
                            },
                            child: const Text(
                              'INGRESA AQUI',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            ))),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: Color(0xff921b21),
          endIndent: 10,
          thickness: 0.3,
          height: 20,
          indent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: size.width * 0.48,
                  height: size.height * 0.08,
                  child: const Text(
                    'El Comando del Ejercito Nacional a traves de la Oficina Servicio al Ciudadano pone a disposicion este espacio para realizar solicitudes y  PQRS',
                    style: TextStyle(fontSize: 9),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          elevation: 10,
                          shape: const BeveledRectangleBorder(
                              side: BorderSide(style: BorderStyle.none),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          shadowColor: const Color(0xff921b21),
                          backgroundColor: const Color(0xff921b21),
                          foregroundColor:
                              const Color.fromARGB(255, 241, 242, 242)),
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
                        style:
                            TextStyle(fontSize: 7, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.45,
              height: size.height * .12,
              child: const Image(
                image: AssetImage('assets/images/sac.png'),
              ),
            ),
          ],
        ),
        const Divider(
          color: Color(0xff921b21),
          endIndent: 10,
          thickness: 0.3,
          height: 20,
          indent: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: size.width * 0.45,
              height: size.height * .12,
              child: const Image(
                image: AssetImage('assets/images/fovid.png'),
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.48,
                      height: size.height * 0.08,
                      child: const Text(
                        'El Comando del Ejercito Nacional a traves del Talento Humano pone a disposicion tu folio de vida digital para aceptar tus ultimas anotaciones',
                        style: TextStyle(fontSize: 9),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                        height: size.height * 0.03,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                shadowColor: const Color(0xff921b21),
                                shape: const BeveledRectangleBorder(
                                    side: BorderSide(style: BorderStyle.none),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                backgroundColor: const Color(0xff921b21),
                                foregroundColor:
                                    const Color.fromARGB(255, 241, 242, 242)),
                            onPressed: () async {
                              final url = Uri.parse(
                                  'https://fovid.ejercito.mil.co:4443/Fovid-2.0/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                                ('Cliked');
                              }
                            },
                            child: const Text(
                              'INGRESA AQUI',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 7),
                            ))),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

Widget landscapewidget(Size size) {
  return ListView(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * .3,
            height: size.height * .3,
            child: const Image(
              image: AssetImage('assets/images/correov.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * .2,
                  height: size.height * .22,
                  child: const Text(
                    'Ingresa al Correo Institucional del Ejercito Nacional, a traves de ellos puedes enviar y recibir correos',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: size.height * 0.08,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                shadowColor: const Color(0xff921b21),
                                shape: const BeveledRectangleBorder(
                                    side: BorderSide(style: BorderStyle.none),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                backgroundColor: const Color(0xff921b21),
                                foregroundColor:
                                    const Color.fromARGB(255, 241, 242, 242)),
                            onPressed: () async {
                              final url = Uri.parse(
                                  'https://correo.buzonejercito.mil.co/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                                ('Cliked');
                              }
                            },
                            child: const Text(
                              'OF-SUB-CIV',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            ))),
                    SizedBox(
                        width: size.width * .090,
                        height: size.height * 0.08,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                elevation: 10,
                                shadowColor: const Color(0xff921b21),
                                shape: const BeveledRectangleBorder(
                                    side: BorderSide(style: BorderStyle.none),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                backgroundColor: const Color(0xff921b21),
                                foregroundColor:
                                    const Color.fromARGB(255, 241, 242, 242)),
                            onPressed: () async {
                              final url = Uri.parse(
                                  'https://correo1.buzonejercito.mil.co/');
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url);
                                ('Cliked');
                              }
                            },
                            child: const Text(
                              'SLP-OPS',
                              style: TextStyle(
                                  fontSize: 9, fontWeight: FontWeight.bold),
                            ))),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * .3,
            height: size.height * .3,
            child: const Image(
              image: AssetImage('assets/images/siweb.png'),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: size.width * .2,
                height: size.height * .16,
                child: const Text(
                  'El Comando del Ejercito Nacional a traves del Talento Humano pone a disposicion los servicios de Notificacion de Cursos, traslados',
                  style: TextStyle(fontSize: 9),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          elevation: 10,
                          shadowColor: const Color(0xff921b21),
                          shape: const BeveledRectangleBorder(
                              side: BorderSide(style: BorderStyle.none),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          backgroundColor: const Color(0xff921b21),
                          foregroundColor:
                              const Color.fromARGB(255, 241, 242, 242)),
                      onPressed: () async {
                        final url = Uri.parse(
                            'https://caocc.ejercito.mil.co:4443/SiwepDiper-web/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                          ('Cliked');
                        }
                      },
                      child: const Text(
                        'Ingresa Aqui',
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                      ))),
            ],
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
      Row(
        children: [
          SizedBox(
            width: size.width * .3,
            height: size.height * .3,
            child: const Image(
              image: AssetImage('assets/images/sac.png'),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: size.width * .2,
                height: size.height * .19,
                child: const Text(
                  'El Comando del Ejercito Nacional a traves de la Oficina Servicio al Ciudadano pone a disposicion este espacio para realizar solicitudes y  PQRS',
                  style: TextStyle(fontSize: 9),
                  textAlign: TextAlign.justify,
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color(0xff921b21),
                      shape: const BeveledRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      backgroundColor: const Color(0xff921b21),
                      foregroundColor:
                          const Color.fromARGB(255, 241, 242, 242)),
                  onPressed: () async {
                    final url = Uri.parse('https://www.pqr.mil.co/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                      ('Cliked');
                    }
                  },
                  child: const Text(
                    'Ingresa Aqui',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(
            width: size.width * .3,
            height: size.height * .3,
            child: const Image(
              image: AssetImage('assets/images/fovid.png'),
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: size.width * .2,
                height: size.height * .19,
                child: const Text(
                  'El Comando del Ejercito Nacional a traves del Talento Humano pone a disposicion tu folio de vida digital para aceptar tus ultimas anotaciones',
                  style: TextStyle(fontSize: 9),
                  textAlign: TextAlign.justify,
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color(0xff921b21),
                      shape: const BeveledRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      backgroundColor: const Color(0xff921b21),
                      foregroundColor:
                          const Color.fromARGB(255, 241, 242, 242)),
                  onPressed: () async {
                    final url = Uri.parse(
                        'https://fovid.ejercito.mil.co:4443/Fovid-2.0/');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                      ('Cliked');
                    }
                  },
                  child: const Text(
                    'Ingresa Aqui',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ],
      ),
    ],
  );
}
