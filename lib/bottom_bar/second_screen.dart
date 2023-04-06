import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Map> data = [
    {
      "image": "assets/images/2_cat.png",
      "text": "¡Hola, soy",
      "name": "Luna!",
      "label": "Soy una gatita de 4\nmeses, cariñosa y...",
    },
    {
      "image": "assets/images/2_lucas_dog.png",
      "text": "¡Hola, soy",
      "name": "Lucas!",
      "label": "Soy un perrito de 2\naños, de raza bulldog...",
    },
    {
      "image": "assets/images/2_paquita_dog.png",
      "text": "¡Hola, soy",
      "name": "Paquita!",
      "label": "Soy una perrita de 2\naños, de raza pequeña..",
    },
    {
      "image": "assets/images/2_luli_dog.png",
      "text": "¡Hola, soy",
      "name": "Luli!",
      "label": "Soy una perrita de 2\naños, de raza pequeña..",
    },
    {
      "image": "assets/images/2_cleo_dog.png",
      "text": "¡Hola, soy",
      "name": "Cleo!",
      "label": "Soy una perrita de 2\naños, de raza grande...",
    },
    {
      "image": "assets/images/2_cleo2_dog.png",
      "text": "¡Hola, soy",
      "name": "Cleo!",
      "label": "Soy una perrita de 2\naños, de raza grande...",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Encuentra a tu alma gemela",
                style: TextStyle(
                  color: Color(0xff734B3E),
                  fontFamily: "SF Pro",
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 25, top: 15),
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
                height: 539,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: 25,
                  ),
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      if (index == 4) {
                        Navigator.pushNamed(context, RoutesName.thirdScreen);
                      }
                      debugPrint("Third Screen------->");
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x1a191d21),
                              blurRadius: 12,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
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
                            child: Image.asset(
                              data[index]["image"],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 8),
                            child: Row(
                              children: [
                                Text(
                                  data[index]["text"],
                                  style: const TextStyle(
                                    color: Color(0xff191D21),
                                    fontFamily: "SF Pro",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  data[index]["name"],
                                  style: const TextStyle(
                                    color: Color(0xff191D21),
                                    fontFamily: "SF Pro",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              data[index]["label"],
                              style: const TextStyle(
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
                    ),
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
