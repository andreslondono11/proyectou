import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectou/bloc/theme.dart';

import 'package:url_launcher/url_launcher.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  //

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        theme: theme.getTheme(),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
