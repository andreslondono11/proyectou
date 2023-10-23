import 'package:flutter/material.dart';
import 'package:proyectou/drawer/lateral.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse(
        'https://sites.google.com/view/pzplatinum/p%C3%A1gina-principal'));
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
                brightness: Brightness.light,
                primary: Color.fromARGB(255, 7, 7, 7),
                onPrimary: Color.fromARGB(255, 4, 0, 0),
                secondary: Color.fromARGB(255, 37, 38, 39),
                onSecondary: Color.fromARGB(255, 35, 37, 36),
                error: Colors.white,
                onError: Colors.white,
                background: Color.fromARGB(255, 72, 71, 71),
                onBackground: Color.fromARGB(255, 228, 7, 7),
                surface: Color.fromARGB(255, 163, 157, 157),
                onSurface: Color.fromARGB(255, 248, 248, 248))),
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
              iconTheme: const IconThemeData(
                  color: Color.fromARGB(255, 255, 255, 255)),
              backgroundColor: const Color(0xfff921b21),
              shadowColor: const Color(0xfff921b21),
              elevation: 10.5,
              title: const Text(
                'Noticias',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            drawer: const DrawerWigdet(),
            // drawerDragStartBehavior: DragStartBehavior.down,
            drawerEnableOpenDragGesture: true,
            // drawerDragStartBehavior: DragStartBehavior.down,
            drawerScrimColor: Color.fromARGB(17, 253, 253, 253),
            // endDrawer: DrawerWigdet(),
            drawerEdgeDragWidth: 10,
            body: WebViewWidget(controller: controller)));
  }
}
