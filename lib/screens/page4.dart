import 'package:flutter/material.dart';
import 'package:proyectou/drawer/lateral.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Page4 extends StatelessWidget {
  Page4({super.key});
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
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
            body: WebViewWidget(controller: controller)));
  }
}
