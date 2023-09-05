import 'package:flutter/material.dart';
import 'package:pet_animal_app/common_widget/app_container.dart';
import 'package:pet_animal_app/common_widget/botton_navigationbar_screen.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(right: 25),
                      onPressed: () {
                        debugPrint("Fourth Screenn----->");
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xffD0AC8A),
                        size: 20,
                      ),
                    ),
                    const Text(
                      "Cleo",
                      style: TextStyle(
                        color: Color(0xff191D21),
                        fontFamily: "SF Pro",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(width: 80),
                    const Text(
                      "Chat Adopción",
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
                const Padding(
                  padding: EdgeInsets.only(left: 290, top: 20),
                  child: Text(
                    "Yasmin",
                    style: TextStyle(
                      color: Color(0xff424C57),
                      fontFamily: "SF Pro",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const AppContainer(
                    text: " Hola! Estoy interesada en adoptar a\nCleo :",
                    margin: EdgeInsets.only(left: 120, top: 5, bottom: 12),
                    color: Color(0xffB1CFEB),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                const Text(
                  "Cleo",
                  style: TextStyle(
                    color: Color(0xffD0AC8A),
                    fontFamily: "SF Pro",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const AppContainer(
                  text:
                      "¡Hola! Yasmin, Cleo está\ndisponible para ser adoptada.",
                  margin: EdgeInsets.only(bottom: 5, top: 5),
                ),
                const AppContainer(
                  text: "Si gustas, podemos agendar una\nvisita",
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 300),
                  child: Text(
                    "Yasmin",
                    style: TextStyle(
                      color: Color(0xff424C57),
                      fontFamily: "SF Pro",
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const AppContainer(
                    text:
                        "Me encantaría conocerla! :D\nQué día puedo visitarla?",
                    color: Color(0xffB1CFEB),
                    margin: EdgeInsets.only(left: 110, top: 5, bottom: 12),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                const Text(
                  "Cleo",
                  style: TextStyle(
                    color: Color(0xffD0AC8A),
                    fontFamily: "SF Pro",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint("Six Screen-------->");
                    Navigator.pushNamed(context, RoutesName.bottomScreen);
                  },
                  child: const AppContainer(
                    text: "El Jueves a las 9 am, en Santiago.\nEn la ",
                    label: "Fundación Perrito,",
                    labelTwo: " visita este\nlink y puedes ver su ubicación",
                  ),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          horizontal: 10, vertical: 18),
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
                          fontSize: 14,
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
      ),
      bottomNavigationBar: const BottomNavigationBarScreen(),
    );
  }
}
