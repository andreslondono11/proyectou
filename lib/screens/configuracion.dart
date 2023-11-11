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

Widget potraitWidget(Size size) {
  return Scaffold(
    appBar: AppBar(
      elevation: 1.0,
      title: const Amort(),
    ),
    body: ListView(
      children: [
        const Temas1(),
        Container(
            width: size.width * 100,
            height: size.height * .025,
            margin: const EdgeInsets.only(top: 10, left: 20),
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
                padding: EdgeInsets.only(right: 0, left: 10, bottom: 0),
                child: Text(
                  'Politicas de Seguridad',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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
        Container(
            width: size.width * 100,
            height: size.height * .025,
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: const Text(
              'Acerca de las Actualizaciones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        Container(
          margin: const EdgeInsets.only(top: 0, right: 10, left: 00),
          width: size.width * 50,
          height: size.height * .055,
          child: ListTile(
              leading: const Icon(Icons.update),
              title: const Padding(
                padding: EdgeInsets.only(right: 0, left: 10),
                child: Text(
                  'Control de Versiones',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              enabled: true,
              onTap: () async {
                final url = Uri.parse(
                    'https://sites.google.com/view/actualizacionpz/p%C3%A1gina-principal');
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
      ],
    ),
  );
}

Widget landscapewidget(Size size) {
  return Scaffold(
    appBar: AppBar(
      elevation: 1.0,
      title: const Amort(),
    ),
    body: ListView(
      children: [
        const Temas2(),
        Container(
            width: size.width * 100,
            height: size.height * .057,
            margin: const EdgeInsets.only(
              top: 5,
              left: 20,
            ),
            child: const Text(
              'Configuraciones de Seguridad',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        Container(
          margin:
              const EdgeInsets.only(top: 0, right: 10, left: 00, bottom: 10),
          width: size.width * 100,
          height: size.height * .065,
          child: ListTile(
              leading: const Icon(Icons.security),
              title: const Padding(
                padding: EdgeInsets.only(right: 0, left: 10),
                child: Text(
                  'Politicas de Seguridad',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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
        Container(
            width: size.width * 100,
            height: size.height * .065,
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              'Acerca de las Actualizaciones',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
        Container(
          margin: const EdgeInsets.only(top: 0, right: 10, left: 00),
          width: size.width * 100,
          height: size.height * 3.88,
          child: ListTile(
              leading: const Icon(Icons.update),
              title: const Padding(
                padding: EdgeInsets.only(right: 0, left: 10),
                child: Text(
                  'Control de Versiones',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
              ),
              enabled: true,
              onTap: () async {
                final url = Uri.parse(
                    'https://sites.google.com/view/actualizacionpz/p%C3%A1gina-principal');
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
      ],
    ),
  );
}

class Amort extends StatelessWidget {
  const Amort({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Center(
        child: Text('CONFIGURACIÓN',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
      ),
      leading: const Icon(Icons.arrow_back),
      onTap: () => {
        Navigator.pop(context),
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const HomePage()))
      },
    );
  }
}

class Temas1 extends StatelessWidget {
  const Temas1({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    ("Ancho:${size.width}");
    ("Altura:${size.height}");
    return Column(children: [
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
        title: Column(children: [
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
              ))
        ]),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                final theme = Provider.of<ThemeChanger>(context);
                return SizedBox(
                  height: size.height * 0.40,
                  width: size.width * 10,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * .20,
                          margin:
                              const EdgeInsets.only(top: 0, left: 0, right: 0),
                          child: const Text(
                            'Tema',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: size.width * 15.15,
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 1),
                                child: TextButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(10)),
                                    onPressed: () =>
                                        theme.setTheme(ThemeData.light()),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.light_mode_sharp,
                                          size: 15,
                                        ),
                                        Text(
                                          ' Claro',
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 0, top: 0.01),
                                child: TextButton(
                                    onPressed: () => theme.setTheme(
                                        ThemeData.dark(useMaterial3: true)),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.dark_mode,
                                          size: 15,
                                        ),
                                        Text(
                                          ' Oscuro',
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    )),
                              ),
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
                                          backgroundColor: Color(0xff7c0808)),
                                      textButtonTheme:
                                          const TextButtonThemeData(
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
                                              backgroundColor: Colors.white),
                                      drawerTheme: const DrawerThemeData(
                                          width: 200,
                                          elevation: 1.10,
                                          backgroundColor: Colors.white),
                                      colorScheme: const ColorScheme(
                                        background: Colors.white,
                                        brightness: Brightness.light,
                                        onPrimary:
                                            Color.fromARGB(255, 104, 6, 6),
                                        onBackground:
                                            Color.fromARGB(255, 155, 18, 18),
                                        onSurface:
                                            Color.fromARGB(255, 33, 33, 33),
                                        primary:
                                            Color.fromARGB(255, 68, 41, 41),
                                        onSecondary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        secondary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        error: Colors.black,
                                        onError:
                                            Color.fromARGB(255, 255, 255, 255),
                                        surface:
                                            Color.fromARGB(255, 206, 203, 203),
                                      ))),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.light_mode_outlined,
                                        size: 15,
                                      ),
                                      Text(
                                        ' Claro Estilo Retro',
                                        style: TextStyle(fontSize: 15),
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
                                      textButtonTheme:
                                          const TextButtonThemeData(
                                              style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.white))),
                                      bottomAppBarTheme:
                                          const BottomAppBarTheme(
                                        color: Color.fromARGB(255, 98, 96, 96),
                                      ),
                                      brightness: Brightness.light,
                                      buttonTheme:
                                          const ButtonThemeData(
                                              buttonColor: Colors.amberAccent),
                                      useMaterial3: true,
                                      listTileTheme: const ListTileThemeData(
                                        iconColor: Colors.white,
                                        textColor: Colors.white,
                                        selectedColor: Colors.white,
                                      ),
                                      bottomSheetTheme:
                                          const BottomSheetThemeData(
                                              backgroundColor: Color.fromARGB(
                                                  255, 98, 96, 96)),
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
                                        onBackground:
                                            Color.fromARGB(255, 155, 18, 18),
                                        onSurface:
                                            Color.fromARGB(255, 33, 33, 33),
                                        primary:
                                            Color.fromARGB(255, 241, 234, 234),
                                        onSecondary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        secondary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        error: Colors.black,
                                        onError:
                                            Color.fromARGB(255, 255, 255, 255),
                                        surface:
                                            Color.fromARGB(255, 206, 203, 203),
                                      ))),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.dark_mode_outlined,
                                        size: 15,
                                      ),
                                      Text(
                                        ' Oscuro Estilo Retro',
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ],
                                  )),
                              TextButton(
                                  onPressed: () => theme.setTheme(ThemeData(
                                      textTheme: const TextTheme(
                                          titleMedium: TextStyle(
                                              color: Color(0xff7c0808)),
                                          bodyMedium:
                                              TextStyle(color: Colors.white)),
                                      appBarTheme: const AppBarTheme(
                                          elevation: 10.2,
                                          shadowColor: Colors.black,

                                          // color: Color(0xff7c0808),
                                          foregroundColor: Colors.white,
                                          backgroundColor: Color(0xff0170b8)),
                                      textButtonTheme:
                                          const TextButtonThemeData(
                                              style: ButtonStyle(
                                                  foregroundColor:
                                                      MaterialStatePropertyAll(
                                                          Colors.white))),
                                      bottomAppBarTheme:
                                          const BottomAppBarTheme(
                                        color: Color(0xff0170b8),
                                      ),
                                      brightness: Brightness.light,
                                      buttonTheme: const ButtonThemeData(
                                          buttonColor: Colors.amberAccent),
                                      useMaterial3: true,
                                      listTileTheme: const ListTileThemeData(
                                        iconColor: Colors.white,
                                        textColor: Colors.white,
                                        selectedColor: Colors.white,
                                      ),
                                      bottomSheetTheme:
                                          const BottomSheetThemeData(
                                        backgroundColor:
                                            Color.fromRGBO(127, 255, 254, 98),
                                      ),
                                      drawerTheme: const DrawerThemeData(
                                        width: 200,
                                        elevation: 1.10,
                                        backgroundColor:
                                            Color.fromRGBO(127, 255, 254, 98),
                                      ),
                                      colorScheme: const ColorScheme(
                                        background:
                                            Color.fromRGBO(19, 191, 247, 98),
                                        brightness: Brightness.light,
                                        onPrimary:
                                            Color.fromARGB(255, 104, 6, 6),
                                        onBackground:
                                            Color.fromARGB(255, 155, 18, 18),
                                        onSurface:
                                            Color.fromARGB(255, 33, 33, 33),
                                        primary:
                                            Color.fromARGB(255, 241, 234, 234),
                                        onSecondary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        secondary:
                                            Color.fromARGB(255, 255, 255, 255),
                                        error: Colors.black,
                                        onError:
                                            Color.fromARGB(255, 255, 255, 255),
                                        surface:
                                            Color.fromARGB(255, 206, 203, 203),
                                      ))),
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.dark_mode_outlined,
                                        size: 15,
                                      ),
                                      Text(
                                        ' Azul Fresco',
                                        style: TextStyle(fontSize: 15),
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
    ]);
  }
}

class Temas2 extends StatelessWidget {
  const Temas2({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;

    ("Ancho:${size.width}");
    ("Altura:${size.height}");
    return Column(children: [
      Container(
          width: size.width * 100,
          height: size.height * .065,
          margin: const EdgeInsets.only(top: 20, left: 20),
          child: const Text(
            'Configuracion General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
      ListTile(
        leading: const Icon(Icons.light_mode),
        title: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 0, right: 0, left: 10),
            width: size.width * 100,
            height: size.height * .065,
            child: const Text(
              'Temas',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 0, right: 0, left: 10),
              width: size.width * 100,
              height: size.height * .065,
              child: const Text(
                'Configuracion Predeterminada',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ))
        ]),
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                final theme = Provider.of<ThemeChanger>(context);
                return SizedBox(
                    height: size.height * 50.49,
                    width: size.width * 50.49,
                    child: ListView(children: [
                      const Text(
                        'Tema',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // wit: size.width * 15.15,

                          TextButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(10)),
                            onPressed: () => theme
                                .setTheme(ThemeData.light(useMaterial3: true)),
                            child: const Row(children: [
                              Icon(
                                Icons.light_mode_sharp,
                                size: 18,
                              ),
                              Text(
                                ' Claro',
                                style: TextStyle(fontSize: 18),
                              )
                            ]),
                          ),
                          TextButton(
                              onPressed: () => theme
                                  .setTheme(ThemeData.dark(useMaterial3: true)),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.dark_mode,
                                    size: 18,
                                  ),
                                  Text(
                                    ' Oscuro',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: () => theme.setTheme(ThemeData(
                                  textTheme: const TextTheme(
                                      titleMedium:
                                          TextStyle(color: Color(0xff7c0808)),
                                      bodyMedium:
                                          TextStyle(color: Color(0xff7c0808))),
                                  appBarTheme: const AppBarTheme(

                                      // color: Color(0xff7c0808),
                                      foregroundColor: Colors.white,
                                      backgroundColor: Color(0xff7c0808)),
                                  textButtonTheme: const TextButtonThemeData(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStatePropertyAll(
                                                  Color(0xff7c0808)))),
                                  bottomAppBarTheme: const BottomAppBarTheme(
                                      color: Color(0xff7c0808)),
                                  brightness: Brightness.light,
                                  buttonTheme: const ButtonThemeData(
                                      buttonColor: Colors.amberAccent),
                                  useMaterial3: true,
                                  listTileTheme: const ListTileThemeData(
                                      iconColor: Colors.grey,
                                      textColor: Colors.grey,
                                      selectedColor: Color(0xff7c0808)),
                                  bottomSheetTheme: const BottomSheetThemeData(
                                      backgroundColor: Colors.white),
                                  drawerTheme: const DrawerThemeData(
                                      width: 200,
                                      elevation: 1.10,
                                      backgroundColor: Colors.white),
                                  colorScheme: const ColorScheme(
                                    background: Colors.white,
                                    brightness: Brightness.light,
                                    onPrimary: Color.fromARGB(255, 104, 6, 6),
                                    onBackground:
                                        Color.fromARGB(255, 155, 18, 18),
                                    onSurface: Color.fromARGB(255, 33, 33, 33),
                                    primary: Color.fromARGB(255, 68, 41, 41),
                                    onSecondary:
                                        Color.fromARGB(255, 255, 255, 255),
                                    secondary:
                                        Color.fromARGB(255, 255, 255, 255),
                                    error: Colors.black,
                                    onError: Color.fromARGB(255, 255, 255, 255),
                                    surface: Color.fromARGB(255, 206, 203, 203),
                                  ))),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.light_mode_outlined,
                                    size: 18,
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
                                      titleMedium:
                                          TextStyle(color: Color(0xff7c0808)),
                                      bodyMedium: TextStyle(
                                          color: Color.fromARGB(
                                              255, 243, 236, 236))),
                                  appBarTheme: const AppBarTheme(

                                      // color: Color(0xff7c0808),
                                      foregroundColor: Colors.white,
                                      backgroundColor:
                                          Color.fromARGB(255, 98, 96, 96)),
                                  textButtonTheme: const TextButtonThemeData(
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white))),
                                  bottomAppBarTheme: const BottomAppBarTheme(
                                    color: Color.fromARGB(255, 98, 96, 96),
                                  ),
                                  brightness: Brightness.light,
                                  buttonTheme: const ButtonThemeData(
                                      buttonColor: Colors.amberAccent),
                                  useMaterial3: true,
                                  listTileTheme: const ListTileThemeData(
                                    iconColor: Colors.white,
                                    textColor: Colors.white,
                                    selectedColor: Colors.white,
                                  ),
                                  bottomSheetTheme: const BottomSheetThemeData(
                                      backgroundColor:
                                          Color.fromARGB(255, 98, 96, 96)),
                                  drawerTheme: const DrawerThemeData(
                                    width: 200,
                                    elevation: 1.10,
                                    backgroundColor:
                                        Color.fromARGB(255, 98, 96, 96),
                                  ),
                                  colorScheme: const ColorScheme(
                                    background: Color.fromARGB(255, 98, 96, 96),
                                    brightness: Brightness.light,
                                    onPrimary: Color.fromARGB(255, 104, 6, 6),
                                    onBackground:
                                        Color.fromARGB(255, 155, 18, 18),
                                    onSurface: Color.fromARGB(255, 33, 33, 33),
                                    primary: Color.fromARGB(255, 241, 234, 234),
                                    onSecondary:
                                        Color.fromARGB(255, 255, 255, 255),
                                    secondary:
                                        Color.fromARGB(255, 255, 255, 255),
                                    error: Colors.black,
                                    onError: Color.fromARGB(255, 255, 255, 255),
                                    surface: Color.fromARGB(255, 206, 203, 203),
                                  ))),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.dark_mode_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    ' Oscuro Estilo Retro',
                                    style: TextStyle(fontSize: 18),
                                  )
                                ],
                              )),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () => theme.setTheme(ThemeData(
                                    textTheme: const TextTheme(
                                        titleMedium:
                                            TextStyle(color: Color(0xff7c0808)),
                                        bodyMedium:
                                            TextStyle(color: Colors.white)),
                                    appBarTheme: const AppBarTheme(
                                        elevation: 10.2,
                                        shadowColor: Colors.black,

                                        // color: Color(0xff7c0808),
                                        foregroundColor: Colors.white,
                                        backgroundColor: Color(0xff0170b8)),
                                    textButtonTheme: const TextButtonThemeData(
                                        style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.white))),
                                    bottomAppBarTheme: const BottomAppBarTheme(
                                      color: Color(0xff0170b8),
                                    ),
                                    brightness: Brightness.light,
                                    buttonTheme: const ButtonThemeData(
                                        buttonColor: Colors.amberAccent),
                                    useMaterial3: true,
                                    listTileTheme: const ListTileThemeData(
                                      iconColor: Colors.white,
                                      textColor: Colors.white,
                                      selectedColor: Colors.white,
                                    ),
                                    bottomSheetTheme:
                                        const BottomSheetThemeData(
                                      backgroundColor:
                                          Color.fromRGBO(127, 255, 254, 98),
                                    ),
                                    drawerTheme: const DrawerThemeData(
                                      width: 200,
                                      elevation: 1.10,
                                      backgroundColor:
                                          Color.fromRGBO(127, 255, 254, 98),
                                    ),
                                    colorScheme: const ColorScheme(
                                      background:
                                          Color.fromRGBO(19, 191, 247, 98),
                                      brightness: Brightness.light,
                                      onPrimary: Color.fromARGB(255, 104, 6, 6),
                                      onBackground:
                                          Color.fromARGB(255, 155, 18, 18),
                                      onSurface:
                                          Color.fromARGB(255, 33, 33, 33),
                                      primary:
                                          Color.fromARGB(255, 241, 234, 234),
                                      onSecondary:
                                          Color.fromARGB(255, 255, 255, 255),
                                      secondary:
                                          Color.fromARGB(255, 255, 255, 255),
                                      error: Colors.black,
                                      onError:
                                          Color.fromARGB(255, 255, 255, 255),
                                      surface:
                                          Color.fromARGB(255, 206, 203, 203),
                                    ))),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.dark_mode_outlined,
                                      size: 18,
                                    ),
                                    Text(
                                      ' Azul Fresco',
                                      style: TextStyle(fontSize: 18),
                                    )
                                  ],
                                )),
                          ])
                    ]));
              });
        },
      ),
    ]);
  }
}
