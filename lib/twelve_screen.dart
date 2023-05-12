import 'package:flutter/material.dart';
import 'package:pet_animal_app/common_widget/botton_navigationbar_screen.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class TwelveScreen extends StatefulWidget {
  const TwelveScreen({Key? key}) : super(key: key);

  @override
  State<TwelveScreen> createState() => _TwelveScreenState();
}

class _TwelveScreenState extends State<TwelveScreen> {
  List<Map> information = [
    {
      "image": "assets/images/12_first_dog.png",
      "text": "¿Cómo proteger a tu mascota del calor?",
      "label":
          "Si tu mascota se encuentra en un balcón, terraza, patio\no jardín, debe tener sombra o alguna zona donde..."
    },
    {
      "image": "assets/images/12_second_dog.png",
      "text": "¿Cómo bañar a tu perro en invierno?",
      "label": "Regula la temperatura ambiente..."
    },
    {
      "image": "assets/images/12_third_dog.png",
      "text": "¿Cuanto tiempo debe salir mi perro al dia?",
      "label":
          "En general, un can requiere de 30 minutos a 2 horas de\nejercicio diario, repartidos en 3 o 4 paseos cada día..."
    },
  ];
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
                      debugPrint("Eleven Screen");
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Suscríbete",
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
                    "Tips y cuidados",
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
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                  top: 30,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 8,
                        bottom: 7,
                        right: 173,
                      ),
                      decoration: const BoxDecoration(
                          color: Color(0xffF1F2F4),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16))),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Color(0xff734B3E),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Buscar",
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
                          horizontal: 10, vertical: 10),
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
                        "Filtrar por:",
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
              ),
              SizedBox(
                height: 536,
                child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (index == 2) {
                        Navigator.pushNamed(context, RoutesName.thirteenScreen);
                      }
                      debugPrint("Thirteen Screen-------->");
                    },
                    child: Container(
                      height: 230,
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
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 25,
                  ),
                  itemCount: information.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarScreen(),
    );
  }
}
