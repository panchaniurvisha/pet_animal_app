import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

import 'commen_widget/botton_navigationbar_screen.dart';

class TenScreen extends StatefulWidget {
  const TenScreen({Key? key}) : super(key: key);

  @override
  State<TenScreen> createState() => _TenScreenState();
}

class _TenScreenState extends State<TenScreen> {
  List<Map> data = [
    {"text": "Macho", "icon": Icons.toll_outlined},
    {"text": "Gato", "icon": Icons.pets_rounded},
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
                      debugPrint("Nine Screen------->");
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
                  const SizedBox(width: 80),
                  const Text(
                    "Dar en adopción",
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
                    child: Image.asset('assets/images/10_cat.png'),
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
                "Gatito en adopción",
                style: TextStyle(
                  color: Color(0xff191D21),
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
                "Me encontré este lindo gatito, no puedo tenerlo\nporque ya tengo mascotas en mi casa. Comparto\nsu información y foto para que puedan adoptarlo.\n\nEs muy tierno, cariñoso y regalón.",
                style: TextStyle(
                  color: Color(0xff191D21),
                  fontFamily: "SF Pro",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
              GridView.builder(
                padding: const EdgeInsets.only(top: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 30,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Row(
                  children: [
                    Icon(data[index]["icon"], color: const Color(0xff734B3E)),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      data[index]["text"],
                      style: const TextStyle(
                        color: Color(0xff734B3E),
                        fontFamily: "SF Pro",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  debugPrint("Eleven Screen");
                  Navigator.pushNamed(context, RoutesName.elevenScreen);
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 80),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff734B3E),
                  ),
                  child: const Text(
                    "Publicar mascota",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: "SF Pro",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarScreen(),
    );
  }
}
