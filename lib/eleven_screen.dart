import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

import 'commen_widget/botton_navigationbar_screen.dart';

class ElevenScreen extends StatefulWidget {
  const ElevenScreen({Key? key}) : super(key: key);

  @override
  State<ElevenScreen> createState() => _ElevenScreenState();
}

class _ElevenScreenState extends State<ElevenScreen> {
  List<Map> information = [
    {
      "image": "assets/images/11_podras_dog.png",
      "text": "Podrás acceder a un veterinario online",
      "label": "Las 24 horas del día, los 7 días de la semana"
    },
    {
      "image": "assets/images/11_podrs_two_dog.png",
      "text": "Podrás acceder a tips de cuidados y salud",
      "label": "Conoce cómo cuidar de la mejor forma a tu mascota"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                        Navigator.pop(context);
                        debugPrint("Ten Screen");
                      },
                    ),
                    const Text(
                      "Inicio",
                      style: TextStyle(
                        color: Color(0xff191D21),
                        fontFamily: "SF Pro",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text(
                      "Suscríbete",
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
                ListView.separated(
                  padding: const EdgeInsets.only(top: 10, bottom: 30),
                  itemBuilder: (context, index) => Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x1a191d21),
                            blurRadius: 16,
                            offset: Offset(0, 2),
                            blurStyle: BlurStyle.outer)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24)),
                            child: Image.asset(information[index]["image"])),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Text(
                            information[index]["text"],
                            style: const TextStyle(
                              color: Color(0xff191D21),
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            information[index]["label"],
                            style: const TextStyle(
                              color: Color(0xff191D21),
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "SF Pro",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 30,
                  ),
                  itemCount: information.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                ),
                InkWell(
                  onTap: () {
                    debugPrint("twelve screen----------->");
                    Navigator.pushNamed(context, RoutesName.twelveScreen);
                  },
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Image.asset(
                        'assets/images/11_dog_chow.png',
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 3),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                topRight: Radius.circular(16)),
                            color: Color(0xff734B3E),
                          ),
                          child: const Text("PUBLICIDAD",
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontFamily: "SF Pro",
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ))),
                    ],
                  ),
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
