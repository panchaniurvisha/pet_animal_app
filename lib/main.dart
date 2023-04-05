import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: const FifthScreen(),
      routes: appRoutes,
      initialRoute: RoutesName.firstScreen,
    );
  }
}
