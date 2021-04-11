import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import 'home_screen/car_controller.dart';
import 'home_screen/home_controller.dart';
import 'home_screen/home_screen.dart';
import 'model/car_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocator();
  runApp(MyApp());

  // final category = ParseObject('Categories')
  //   ..set<String>('Title', 'Meias')
  //   ..set<int>('Position', 1);
  //
  // final response = await category.save();
  // print(response.success);
}

void setupLocator() {
  GetIt.I.registerSingleton(Car());
  GetIt.I.registerSingleton(CarController());
  GetIt.I.registerSingleton(HomeController());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    'zMQGs4dmE92PnGOINgo9QsggowXwo70uzWsg1pQS',
    'https://parseapi.back4app.com/',
    clientKey: 'fcNak0XWIWxx48Kw9RHAcpYjJYSoTXg7zopEeZQp',
    autoSendSessionId: true,
    // coreStore: await CoreStoreSembastImp.getInstance(null),
    debug: true,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fipe - Diego de Souza Castro',
      theme: ThemeData(
        primaryColor: Color(0xFF000000),
        primaryColorDark: Color(0xFF262626),
        primaryColorLight: Color(0xFF595959),
        accentColor: Color(0xFF00ADEE),
        canvasColor: Color(0xFFE5E5E5),
        backgroundColor: Color(0xFFE5E5E5),
        hintColor: Color(0xFFFAAD14),
      ),
      home: HomeScreen(),
    );
  }
}
