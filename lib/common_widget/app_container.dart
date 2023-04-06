import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final String? label;
  final String? text;
  final EdgeInsetsGeometry? margin;
  final String? labelTwo;

  const AppContainer({
    Key? key,
    this.color,
    this.borderRadius,
    this.margin,
    this.label,
    this.text,
    this.labelTwo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return (Container(
        height: 80,
        width: 250,
        margin: margin ??
            const EdgeInsets.only(
              bottom: 12,
              top: 5,
            ),
        padding: const EdgeInsets.only(
          top: 16,
          left: 26,
        ),
        decoration: BoxDecoration(
            color: color ?? const Color(0xffD0AC8A),
            borderRadius: borderRadius ??
                const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
        child: RichText(
            text: TextSpan(children: [
          TextSpan(
            style: const TextStyle(
              color: Color(0xff191D21),
              fontFamily: "SF Pro",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            text: text!,
          ),
          TextSpan(
            style: const TextStyle(
                color: Color(0xff191D21),
                fontFamily: "SF Pro",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.underline),
            text: label ?? "",
          ),
          TextSpan(
            style: const TextStyle(
              color: Color(0xff191D21),
              fontFamily: "SF Pro",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            text: labelTwo ?? "",
          )
        ]))));
  }
}
