import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectou/bloc/theme.dart';
import 'package:proyectou/screens/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ConfiguracionNota extends StatefulWidget {
  const ConfiguracionNota({super.key});

  @override
  State<ConfiguracionNota> createState() => _ConfiguracionNotaState();
}

class _ConfiguracionNotaState extends State<ConfiguracionNota> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    ("Ancho:${size.width}");
    ("Altura:${size.height}");
    return MaterialApp(
      theme: theme.getTheme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          // shadowColor: Colors.white,
          elevation: 1.0,
          title: ListTile(
            title: const Text('Configuracion', style: TextStyle(fontSize: 26)),
            leading: const Icon(Icons.arrow_back_ios_new),
            onTap: () => {
              Navigator.pop(context),
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HomePage()))
            },
          ),
        ),
        body: Column(children: [
          Container(
              width: size.width * 100,
              height: size.height * .05,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                'Configuracion General',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          ListTile(
            leading: const Icon(Icons.light_mode),
            title: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 0, right: 0, left: 10),
                  width: size.width * 100,
                  height: size.height * .03,
                  child: const Text(
                    'Temas',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, right: 0, left: 10),
                  width: size.width * 100,
                  height: size.height * .03,
                  child: const Text(
                    'Configuracion Predeterminada',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    final theme = Provider.of<ThemeChanger>(context);
                    return SizedBox(
                      height: size.height * 0.45,
                      width: size.width * 10,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width * .20,
                              margin: const EdgeInsets.only(
                                  top: 40, left: 0, right: 250),
                              child: const Text(
                                'Tema',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: size.width * 15.15,
                              margin: const EdgeInsets.only(left: 20),
                              child: Column(
                                children: [
                                  TextButton(
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(10)),
                                      onPressed: () =>
                                          theme.setTheme(ThemeData.light()),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.light_mode_sharp,
                                            size: 14,
                                          ),
                                          Text(
                                            ' Claro',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      )),
                                  TextButton(
                                      onPressed: () => theme.setTheme(
                                          ThemeData.dark(useMaterial3: true)),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.dark_mode,
                                            size: 14,
                                          ),
                                          Text(
                                            ' Oscuro',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      )),
                                  TextButton(
                                      onPressed: () => theme.setTheme(ThemeData(
                                          textTheme: const TextTheme(
                                              titleMedium: TextStyle(
                                                  color: Color(0xff7c0808)),
                                              bodyMedium: TextStyle(
                                                  color: Color(0xff7c0808))),
                                          appBarTheme: const AppBarTheme(

                                              // color: Color(0xff7c0808),
                                              foregroundColor: Colors.white,
                                              backgroundColor:
                                                  Color(0xff7c0808)),
                                          textButtonTheme: const TextButtonThemeData(
                                              style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStatePropertyAll(
                                                          Color(0xff7c0808)))),
                                          bottomAppBarTheme:
                                              const BottomAppBarTheme(
                                                  color: Color(0xff7c0808)),
                                          brightness: Brightness.light,
                                          buttonTheme: const ButtonThemeData(
                                              buttonColor: Colors.amberAccent),
                                          useMaterial3: true,
                                          listTileTheme: const ListTileThemeData(
                                              iconColor: Colors.grey,
                                              textColor: Colors.grey,
                                              selectedColor: Color(0xff7c0808)),
                                          bottomSheetTheme:
                                              const BottomSheetThemeData(
                                                  backgroundColor:
                                                      Colors.white),
                                          drawerTheme: const DrawerThemeData(
                                              width: 200,
                                              elevation: 1.10,
                                              backgroundColor: Colors.white),
                                          colorScheme: const ColorScheme(
                                            background: Colors.white,
                                            brightness: Brightness.light,
                                            onPrimary:
                                                Color.fromARGB(255, 104, 6, 6),
                                            onBackground: Color.fromARGB(
                                                255, 155, 18, 18),
                                            onSurface:
                                                Color.fromARGB(255, 33, 33, 33),
                                            primary:
                                                Color.fromARGB(255, 68, 41, 41),
                                            onSecondary: Color.fromARGB(
                                                255, 255, 255, 255),
                                            secondary: Color.fromARGB(
                                                255, 255, 255, 255),
                                            error: Colors.black,
                                            onError: Color.fromARGB(
                                                255, 255, 255, 255),
                                            surface: Color.fromARGB(
                                                255, 206, 203, 203),
                                          ))),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.light_mode_outlined,
                                            size: 14,
                                          ),
                                          Text(
                                            ' Claro Estilo Retro',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      )),
                                  TextButton(
                                      onPressed: () => theme.setTheme(ThemeData(
                                          textTheme: const TextTheme(
                                              titleMedium: TextStyle(
                                                  color: Color(0xff7c0808)),
                                              bodyMedium: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 243, 236, 236))),
                                          appBarTheme: const AppBarTheme(

                                              // color: Color(0xff7c0808),
                                              foregroundColor: Colors.white,
                                              backgroundColor: Color.fromARGB(
                                                  255, 98, 96, 96)),
                                          textButtonTheme: const TextButtonThemeData(
                                              style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.white))),
                                          bottomAppBarTheme:
                                              const BottomAppBarTheme(
                                            color:
                                                Color.fromARGB(255, 98, 96, 96),
                                          ),
                                          brightness: Brightness.light,
                                          buttonTheme: const ButtonThemeData(
                                              buttonColor: Colors.amberAccent),
                                          useMaterial3: true,
                                          listTileTheme:
                                              const ListTileThemeData(
                                            iconColor: Colors.white,
                                            textColor: Colors.white,
                                            selectedColor: Colors.white,
                                          ),
                                          bottomSheetTheme:
                                              const BottomSheetThemeData(
                                                  backgroundColor: Color.fromARGB(255, 98, 96, 96)),
                                          drawerTheme: const DrawerThemeData(
                                            width: 200,
                                            elevation: 1.10,
                                            backgroundColor:
                                                Color.fromARGB(255, 98, 96, 96),
                                          ),
                                          colorScheme: const ColorScheme(
                                            background:
                                                Color.fromARGB(255, 98, 96, 96),
                                            brightness: Brightness.light,
                                            onPrimary:
                                                Color.fromARGB(255, 104, 6, 6),
                                            onBackground: Color.fromARGB(
                                                255, 155, 18, 18),
                                            onSurface:
                                                Color.fromARGB(255, 33, 33, 33),
                                            primary: Color.fromARGB(
                                                255, 241, 234, 234),
                                            onSecondary: Color.fromARGB(
                                                255, 255, 255, 255),
                                            secondary: Color.fromARGB(
                                                255, 255, 255, 255),
                                            error: Colors.black,
                                            onError: Color.fromARGB(
                                                255, 255, 255, 255),
                                            surface: Color.fromARGB(
                                                255, 206, 203, 203),
                                          ))),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.dark_mode_outlined,
                                            size: 14,
                                          ),
                                          Text(
                                            ' Oscuro Estilo Retro',
                                            style: TextStyle(fontSize: 18),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
          Container(
              width: size.width * 100,
              height: size.height * .05,
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                'Configuraciones de Seguridad',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: const EdgeInsets.only(top: 0, right: 10, left: 00),
            width: size.width * 100,
            height: size.height * .06,
            child: ListTile(
                leading: const Icon(Icons.security),
                title: const Padding(
                  padding: EdgeInsets.only(right: 0, left: 10),
                  child: Text(
                    'Politicas de Seguridad',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
                  ),
                ),
                enabled: true,
                onTap: () async {
                  final url = Uri.parse(
                      'https://sites.google.com/view/politicasde-seguridad/politicas-de-seguridad');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url,
                        mode: LaunchMode.inAppWebView,
                        webViewConfiguration: const WebViewConfiguration(
                            enableDomStorage: true, enableJavaScript: true));
                    ('Cliked');
                    // Actualiza el estado de la aplicación
                    // ...
                  }
                }),
          ),
        ]),
      ),
    );
  }
}
