import 'package:flutter/material.dart';
import 'package:pet_animal_app/common_widget/app_container.dart';
import 'package:pet_animal_app/common_widget/botton_navigationbar_screen.dart';

class ThirteenScreen extends StatefulWidget {
  const ThirteenScreen({Key? key}) : super(key: key);

  @override
  State<ThirteenScreen> createState() => _ThirteenScreenState();
}

class _ThirteenScreenState extends State<ThirteenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: const EdgeInsets.only(right: 25),
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xffD0AC8A),
                      size: 20,
                    ),
                    onPressed: () {
                      debugPrint("Twelve Screen--------->");
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Mi mascota",
                    style: TextStyle(
                      color: Color(0xff191D21),
                      fontFamily: "SF Pro",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "Veterinario online",
                    style: TextStyle(
                      color: Color(0xff734B3E),
                      fontFamily: "SF Pro",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 290),
                child: Text(
                  "Usuario",
                  style: TextStyle(
                    color: Color(0xff734B3E),
                    fontFamily: "SF Pro",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              const AppContainer(
                  text:
                      "Hola, le escribo porque mi perrita,\nLuli, no se ha sentido muy bien los\núltimos días",
                  margin: EdgeInsets.only(left: 120, top: 5, bottom: 12),
                  color: Color(0xffB1CFEB),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              const AppContainer(
                  text:
                      "Tiene mucho vomito. Me gustaría\nsaber si me puede dar algunos\nconsejos",
                  margin: EdgeInsets.only(left: 120, top: 5, bottom: 12),
                  color: Color(0xffB1CFEB),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              const Text(
                "Cleo",
                style: TextStyle(
                  color: Color(0xff734B3E),
                  fontFamily: "SF Pro",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const AppContainer(
                text:
                    "¡Hola, Yasmin! Te recomiendo que\nvisites al veterinario, es importante\nexaminarla antes.",
                margin: EdgeInsets.only(bottom: 5, top: 5),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 290),
                child: Text(
                  "Usuario",
                  style: TextStyle(
                    color: Color(0xff734B3E),
                    fontFamily: "SF Pro",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              const AppContainer(
                  text: "Ahh y qué día tienen disponible?",
                  color: Color(0xffB1CFEB),
                  margin: EdgeInsets.only(left: 110, top: 5, bottom: 12),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              const Text(
                "Cleo",
                style: TextStyle(
                  color: Color(0xff734B3E),
                  fontFamily: "SF Pro",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const AppContainer(
                text:
                    "Te recomiendo que visites este link\ny te aparecerán las ",
                label: "clínicas más cercanas a tu zona",
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 15.5, bottom: 15.5, left: 10, right: 68),
                    decoration: const BoxDecoration(
                        color: Color(0xffF1F2F4),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.wechat_sharp, color: Color(0xff734B3E)),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Escribe un mensaje a Cleo",
                          style: TextStyle(
                            color: Color(0xff424C57),
                            fontFamily: "SF Pro",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 18),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          16,
                        ),
                        bottomRight: Radius.circular(16),
                      ),
                      color: Color(0xffD0AC8A),
                    ),
                    child: const Text(
                      "Enviar",
                      style: TextStyle(
                        color: Color(0xff191D21),
                        fontFamily: "SF Pro",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarScreen(),
    );
  }
}
