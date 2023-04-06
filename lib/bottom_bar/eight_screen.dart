import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class EightScreen extends StatefulWidget {
  const EightScreen({Key? key}) : super(key: key);

  @override
  State<EightScreen> createState() => _EightScreenState();
}

class _EightScreenState extends State<EightScreen> {
  List<Map> data = [
    {"text": "Vacunas al día", "icon": Icons.assignment_turned_in},
    {"text": "Sin alergias", "image": "assets/images/3_bone.png"},
    {"text": "Pomerania", "icon": Icons.pets_rounded},
    {"text": "Problemas\nrespiriatories", "icon": Icons.medical_services},
    {"text": "Hembra", "icon": Icons.toll_outlined},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
                      debugPrint("Six Screen----->");
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Mapa",
                    style: TextStyle(
                      color: Color(0xff191D21),
                      fontFamily: "SF Pro",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    "Mi mascota",
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
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Image.asset('assets/images/8_cleo_dog.png'),
                  ),
                  Container(
                      margin: const EdgeInsets.only(bottom: 45, right: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xff734B3E),
                      ),
                      child: const Text("Editar imagen",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontFamily: "SF Pro",
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ))),
                ],
              ),
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
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Soy una perrita sociable a la que le encanta salir a\npasear y mover su colita. Me llevo bien con todos,\ndesde otros adultos y niños, hasta otros perritos e\n¡incluso gatos!",
                style: TextStyle(
                  color: Color(0xff191D21),
                  fontFamily: "SF Pro",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.only(top: 15),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 35,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                  children: [
                    index == 1
                        ? Image.asset(
                            "assets/images/3_bone.png",
                            height: 15,
                          )
                        : Icon(data[index]["icon"],
                            color: const Color(0xff734B3E)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        data[index]["text"],
                        style: const TextStyle(
                          color: Color(0xff734B3E),
                          fontFamily: "SF Pro",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        debugPrint("Nine Screen--------->");
                        Navigator.pushNamed(context, RoutesName.nineScreen);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xff734B3E),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 12, top: 12, bottom: 12, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/8_notification.png',
                                height: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Publicar mascota\nperdida",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontFamily: "SF Pro",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        debugPrint("Thirteen_screen");
                        Navigator.pushNamed(context, RoutesName.thirteenScreen);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff734B3E)),
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xffFFFFFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 12, top: 12, left: 12, right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(Icons.wechat_sharp,
                                    color: Color(0xff734B3E)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Veterinario\nonline",
                                    style: TextStyle(
                                      color: Color(0xff734B3E),
                                      fontFamily: "SF Pro",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    )),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
