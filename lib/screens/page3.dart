import 'package:flutter/material.dart';
import 'package:proyectou/drawer/lateral.dart';

import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  //
  ThemeMode _themeMode = ThemeMode.system;
  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        darkTheme: ThemeData.from(
            colorScheme: const ColorScheme(
                brightness: Brightness.dark,
                primary: Color.fromARGB(255, 12, 12, 12),
                onPrimary: Color.fromARGB(255, 28, 27, 27),
                secondary: Color.fromARGB(255, 37, 38, 39),
                onSecondary: Color.fromARGB(255, 238, 245, 239),
                error: Colors.white,
                onError: Colors.white,
                background: Color.fromARGB(255, 97, 94, 94),
                onBackground: Color.fromARGB(255, 16, 14, 14),
                surface: Color.fromARGB(255, 63, 48, 48),
                onSurface: Color.fromARGB(255, 243, 238, 238))),
        themeMode: _themeMode,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
            iconTheme:
                const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
            backgroundColor: const Color(0xfff921b21),
            shadowColor: Colors.blueGrey,
            elevation: 10.2,
            title: const Text(
              'Bienestar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          drawer: const DrawerWigdet(),
          // drawerDragStartBehavior: DragStartBehavior.down,

          body: ListView(
            children: [
              const SizedBox(
                child: Image(image: AssetImage('assets/images/bienestar.png')),
              ),
              const Divider(
                color: Color(0xfff921b21),
                endIndent: 50,
                thickness: 0.09,
                height: 10,
                indent: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 80, right: 80),
                child: TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                          left: 50,
                          right: 60,
                        ),
                        backgroundColor: const Color(0xfff921b21),
                        foregroundColor: Colors.white),
                    onPressed: () async {
                      final url = Uri.parse(
                          'https://www.mindefensa.gov.co/irj/portal/Mindefensa/contenido?NavigationTarget=navurl://4c4ab427549ea616e21697a36f505a52');
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                        print('Cliked');
                      }
                    },
                    child: const Text('Accede Aqui',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              const Divider(
                color: Color(0xfff921b21),
                endIndent: 50,
                thickness: 0.09,
                height: 10,
                indent: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Conoce el programa de Alianzas y descuentos con más de 205 empresas en 14 categorías cómo educación, salud, cuidado personal, restaurantes, vehículos, entre otros...',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Para el personal del Ejército Nacional (activos, retirados y pensionados) y civil del MDN.',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  'Para disfrutar de los beneficios, presenta la cédula militar o fichero de la unidad. ',
                  style: TextStyle(fontWeight: FontWeight.w300))
            ],
          ),
        ));
  }
}
