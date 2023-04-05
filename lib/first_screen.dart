import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 70,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/1_main_image.png', height: 100),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/images/1_kael.png', height: 55),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 80, bottom: 15),
                child: Text(
                  "Ingresa tus datos",
                  style: TextStyle(
                    color: Color(0xff734B3E),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "SF Pro",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                height: 77,
                decoration: BoxDecoration(
                  color: const Color(0xffF1F2F4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Correo electrónico",
                          style: TextStyle(
                            color: Color(0xff191D21),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: "SF Pro",
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          "yasmin@gmail.com",
                          style: TextStyle(
                            color: Color(0xff734B3E),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: "SF Pro",
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Color(0xffD0AC8A),
                      thickness: 1,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Contraseña",
                          style: TextStyle(
                            color: Color(0xff191D21),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: "SF Pro",
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "***********",
                          style: TextStyle(
                            color: Color(0xff734B3E),
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: "SF Pro",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 80, top: 26, left: 170),
                child: Text(
                  "¿Olvidaste tu contraseña?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff734B3E),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "SF Pro",
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  debugPrint("Second Screen------>");
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    RoutesName.bottomScreen,
                    (route) => false,
                  );
                  //Navigator.pushNamed(context, RoutesName.secondScreen);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 150),
                  decoration: BoxDecoration(
                    color: const Color(0xff734B3E),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    "Ingresar",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: "SF Pro",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 110, vertical: 18),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff734B3E),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  "Ingresar con Apple",
                  style: TextStyle(
                    color: Color(0xff734B3E),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "SF Pro",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
                child: Text(
                  "Crear cuenta",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff734B3E),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontFamily: "SF Pro",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
