import 'package:flutter/material.dart';
import 'package:weincode_design_system/fundation/color_fundation.dart';
import 'package:weincode_design_system/tokens/typography.dart';




class OurText extends StatelessWidget{
  final String? text;
  final Color? colorText;
  final double? fontSize;
  final TextAlign? textAlign;
  OurText ({
    required Key? key,
    required this.text,
    this.colorText,
    this.fontSize,
    this.textAlign

  }
      ):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Text(
        this.text!,
        style: TextStyle(color: this.colorText, fontSize: this.fontSize ),
        textAlign: TextAlign.center,
        maxLines: 4
    );
  }
}

class H1 extends StatelessWidget{
  final String? text;
  H1({required Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: H1_COLOR,key: Key(key.toString()+'h1'),);
  }
}

class H2 extends StatelessWidget{
  final String? text;
  H2({required Key? key, required this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: H2_COLOR,fontSize: H2_SIZE, key: key,);
  }
}

class NormalText extends StatelessWidget{
  final String? text;
  NormalText({Key? key, this.text}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return OurText (text:this.text, colorText: H3_COLOR, key: key,);
  }
}