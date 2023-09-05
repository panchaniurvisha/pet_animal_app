import 'package:flutter/material.dart';
import 'package:pet_animal_app/routes/routes_name.dart';

class SixScreen extends StatefulWidget {
  const SixScreen({Key? key}) : super(key: key);

  @override
  State<SixScreen> createState() => _SixScreenState();
}

class _SixScreenState extends State<SixScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            child: Column(
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
                        debugPrint("Fifth Screen---->");
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Chat Adopción",
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
                      "Mapa",
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
                            horizontal: 5, vertical: 10),
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
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child: Image.asset('assets/images/6_map.png'),
                  onTap: () {
                    debugPrint("Seven Screen---->");
                    Navigator.pushNamed(context, RoutesName.sevenScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
