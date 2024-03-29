import 'package:flutter/material.dart';
import 'package:pet_animal_app/common_widget/botton_navigationbar_screen.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  List<Map> data = [
    {"text": "Vacunas al día", "icon": Icons.assignment_turned_in},
    {"text": "Sin alergias", "image": "assets/images/3_bone.png"},
    {"text": "Mestiza", "icon": Icons.pets_rounded},
    {"text": "Sin enfermedades", "icon": Icons.medical_services},
    {"text": "Hembra", "icon": Icons.toll_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
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
                      debugPrint("Second Screen------>");
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Inicio",
                    style: TextStyle(
                      color: Color(0xff191D21),
                      fontFamily: "SF Pro",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const Text(
                    "¡Hola, soy Cleo!",
                    style: TextStyle(
                      color: Color(0xff734B3E),
                      fontFamily: "SF Pro",
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/3_cleo_dog.png',
                      height: 198,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cleo",
                            style: TextStyle(
                              color: Color(0xffD0AC8A),
                              fontFamily: "SF Pro",
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            "Soy una perrita de 2\naños, de raza grande.\nMe gusta mucho jugar\ncon los niños luego de\nla escuela… y también\nme gusta pasear en el\nparque y salir a correr.",
                            style: TextStyle(
                              color: Color(0xff191D21),
                              fontFamily: "SF Pro",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Text(
                "Ah, sí, sí, mi nombre es Cleo y adoraré gastar mi\nenergía a tu lado, jugar, divertirnos, hablar ¡todo\nincluido! En especial voy a entregarte mucho amor,\nno importa si somos solo los dos o somos muchos\nen la misma casa, ¡mi corazón alcanza para amar a\ncualquiera!",
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
                  mainAxisExtent: 30,
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
              const SizedBox(
                height: 78,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context,
                      RoutesName.bottomScreen,
                      (route) => false,
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(170, 60),
                      backgroundColor: const Color(0xff734B3E),
                      elevation: 5, // Adjust the button elevation
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text("Agregar a favoritos",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: "SF Pro",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        )),
                  ),
                  OutlinedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, RoutesName.fifthScreen),
                      style: OutlinedButton.styleFrom(
                        fixedSize: const Size(170, 60),
                        side: const BorderSide(
                          color:
                              Color(0xff734B3E), // Border color// Border width
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              16), // Button's border radius
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.wechat_sharp, color: Color(0xff734B3E)),
                          Text("Chatear con Cleo",
                              style: TextStyle(
                                color: Color(0xff734B3E),
                                fontFamily: "SF Pro",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              )),
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarScreen(),
      ),
    );
  }
}
