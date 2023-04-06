import 'package:flutter/material.dart';
import 'package:pet_animal_app/bottom_bar/eight_screen.dart';
import 'package:pet_animal_app/bottom_bar/fourth_screen.dart';
import 'package:pet_animal_app/bottom_bar/second_screen.dart';
import 'package:pet_animal_app/bottom_bar/six_screen.dart';
import 'package:pet_animal_app/eleven_screen.dart';
import 'package:pet_animal_app/nine_screen.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key, required}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndex = 0;
  final List<Widget> listOfScreen = [
    const SecondScreen(),
    const FourthScreen(),
    const SixScreen(),
    const EightScreen(),
    const NineScreen(),
    const ElevenScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type:
              BottomNavigationBarType.fixed, // Fixed// <-- This works for fixed
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Inicio',
              activeIcon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favoritos',
              activeIcon: Icon(
                Icons.favorite,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_sharp),
              label: 'Mapa',
              activeIcon: Icon(
                Icons.location_on_sharp,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets_rounded),
              label: 'Mi mascota',
              activeIcon: Icon(
                Icons.pets_rounded,
              ),
            ),
          ],
          onTap: (value) {
            debugPrint("Value---->$value");
            setState(() {
              currentIndex = value;
            });
          },
          selectedItemColor: const Color(0xff8B98A6),
          unselectedIconTheme: const IconThemeData(color: Color(0xffD0AC8A)),
          unselectedItemColor: const Color(0xff734B3E),
          selectedIconTheme: const IconThemeData(
            color: Color(0xffF1F2F4),
          ),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          iconSize: 30,
        ),
        body: Column(
          children: [
            if (currentIndex == 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(right: 25),
                      icon: const Icon(
                        Icons.home,
                        color: Color(0xff734B3E),
                        size: 30,
                      ),
                      onPressed: () {
                        debugPrint("Seven Screen----------->");
                        Navigator.pushNamed(context, RoutesName.sevenScreen)
                            .then((value) {
                          switch (value) {
                            case "Favoritos":
                              currentIndex = 1;
                              setState(() {});
                              debugPrint("value ---> $value");
                              break;
                            case "Mapa":
                              currentIndex = 2;
                              setState(() {});
                              debugPrint("value ---> $value");
                              break;
                            case "Mi mascota":
                              currentIndex = 3;
                              setState(() {});
                              debugPrint("value ---> $value");
                              break;
                            case "Inicio":
                              currentIndex = 0;
                              setState(() {});
                              debugPrint("value ---> $value");
                              break;
                          }
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset(
                        'assets/images/1_kael.png',
                        height: 16,
                      ),
                    )
                  ],
                ),
              ),
            Expanded(child: listOfScreen.elementAt(currentIndex)),
          ],
        ),
      ),
    );
  }
}
