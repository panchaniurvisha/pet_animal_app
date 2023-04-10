import 'package:flutter/material.dart';

class SevenScreen extends StatefulWidget {
  const SevenScreen({Key? key}) : super(key: key);

  @override
  State<SevenScreen> createState() => _SevenScreenState();
}

class _SevenScreenState extends State<SevenScreen> {
  String nameData = "";
  List<String> name = [
    "Inicio",
    "Mi mascota",
    "Mascotas perdidas",
    "Mapa",
    "Favoritos",
    "Suscribete "
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  isDismissible: true,
                  context: context,
                  barrierColor: Colors.transparent,
                  builder: (context) => Container(
                    height: 520,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    child: ListView.separated(
                      padding: const EdgeInsets.only(top: 70),
                      itemBuilder: (context, index) => ListTile(
                        title: TextButton(
                          onPressed: () {
                            debugPrint("${name[index]}");
                            Navigator.pop(context, name[index]);
                          },
                          child: Text(name[index],
                              style: const TextStyle(
                                color: Color(0xff191D21),
                                fontFamily: "Inter",
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              )),
                        ),
                      ),
                      itemCount: name.length,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const Divider(
                        thickness: 1,
                      ),
                    ),
                  ),
                ).then((value) {
                  debugPrint("screen value ---> $value");
                  nameData = value;
                  setState(() {});
                  Navigator.pop(context, nameData);
                });
              },
              child: const Text("open bottom sheet")),
        ),
      ),
    );
  }
}
