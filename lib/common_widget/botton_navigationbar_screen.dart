import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed, // Fixed// <-- This works for fixed
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_sharp),
          label: 'Mapa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets_rounded),
          label: 'Mi mascota',
        ),
      ],
      selectedItemColor: const Color(0xff734B3E),
      unselectedIconTheme: const IconThemeData(
        color: Color(0xffD0AC8A),
      ),
      unselectedItemColor: const Color(0xff734B3E),
      selectedIconTheme: const IconThemeData(
        color: Color(0xffD0AC8A),
      ),
      showUnselectedLabels: true,
      showSelectedLabels: true,
      iconSize: 30,
    );
  }
}
