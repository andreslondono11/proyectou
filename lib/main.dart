import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:proyectou/screens/home_page.dart';

import 'package:provider/provider.dart';
import 'package:proyectou/bloc/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // int index = 0;
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeData.light()),
      child: MaterialAppWidthTehme(),
    );
  }
}

class MaterialAppWidthTehme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
        theme: theme.getTheme(),
        debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.system,
        title: 'Material App',
        // theme: ThemeData(useMaterial3: true),
        home: HomePage());
  }
}





//



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: DrawerWigdet(),
//       drawerDragStartBehavior: DragStartBehavior.down,

//       drawerEnableOpenDragGesture: true,
//       // drawerDragStartBehavior: DragStartBehavior.down,
//       drawerScrimColor: Color.fromARGB(17, 253, 253, 253),
//       // endDrawer: DrawerWigdet(),
//       drawerEdgeDragWidth: 10,
//       bottomNavigationBar: myBnB,
//       body: Rutas(index: index),
//     );
//   }
// }
