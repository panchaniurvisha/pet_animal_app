import 'package:flutter/cupertino.dart';
import 'package:pet_animal_app/bottom_bar/bottom_screen.dart';
import 'package:pet_animal_app/bottom_bar/eight_screen.dart';
import 'package:pet_animal_app/bottom_bar/fourth_screen.dart';
import 'package:pet_animal_app/bottom_bar/second_screen.dart';
import 'package:pet_animal_app/bottom_bar/six_screen.dart';
import 'package:pet_animal_app/eleven_screen.dart';
import 'package:pet_animal_app/fifth_screen.dart';
import 'package:pet_animal_app/first_screen.dart';
import 'package:pet_animal_app/nine_screen.dart';
import 'package:pet_animal_app/seven_screen.dart';
import 'package:pet_animal_app/ten_screen.dart';
import 'package:pet_animal_app/third_screen.dart';
import 'package:pet_animal_app/thirteen_screen.dart';
import 'package:pet_animal_app/twelve_screen.dart';

import 'routes_name.dart';

Map<String, WidgetBuilder> appRoutes = {
  RoutesName.firstScreen: (context) => const FirstScreen(),
  RoutesName.secondScreen: (context) => const SecondScreen(),
  RoutesName.thirdScreen: (context) => const ThirdScreen(),
  RoutesName.fourthScreen: (context) => const FourthScreen(),
  RoutesName.fifthScreen: (context) => const FifthScreen(),
  RoutesName.sixScreen: (context) => const SixScreen(),
  RoutesName.sevenScreen: (context) => const SevenScreen(),
  RoutesName.eightScreen: (context) => const EightScreen(),
  RoutesName.nineScreen: (context) => const NineScreen(),
  RoutesName.tenScreen: (context) => const TenScreen(),
  RoutesName.elevenScreen: (context) => const ElevenScreen(),
  RoutesName.twelveScreen: (context) => const TwelveScreen(),
  RoutesName.thirteenScreen: (context) => const ThirteenScreen(),
  RoutesName.bottomScreen: (context) => const BottomScreen(),
};
