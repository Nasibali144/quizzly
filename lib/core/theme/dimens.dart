import 'package:flutter/material.dart';

sealed class AppDimens {
  // dimens:
  static const double d2 = 2.0;
  static const double d3 = 3.0;
  static const double d8 = 8.0;
  static const double d14 = 14.0;
  static const double d15 = 15.0;
  static const double d18 = 18.0;
  static const double d20 = 20.0;
  static const double d50 = 50.0;
  static const double d60 = 60.0;
  static const double d70 = 70.0;
  static const double d100 = 100.0;
  static const double d120 = 120.0;
  static const double d140 = 140.0;
  static const double d150 = 150.0;
  static const double d180 = 180.0;
  static const double d200 = 200.0;


  // padding:
  static const pL30T60R30B30 = EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30);
  static const pA24 = EdgeInsets.all(24);
  static const pH40 = EdgeInsets.symmetric(horizontal: 40);
  static const pH50 = EdgeInsets.symmetric(horizontal: 50,);
  static const pA5 =  EdgeInsets.all(5);
  static const pL20 = EdgeInsets.only(left: 20);
  

  // gap:
  static const h20 = SizedBox(height: 20);
  static const h24 = SizedBox(height: 24);
  static const h30 = SizedBox(height: 30);
  static const h40 = SizedBox(height: 40);
  static const h60 = SizedBox(height: 60);
  static const h80 = SizedBox(height: 80);
  static const h200 = SizedBox(height: 200);
  static const w5 = SizedBox(width: 5);
  static const w20 = SizedBox(width: 20);


  // radius:
  static const br16 = BorderRadius.all(Radius.circular(16));
  static const br20 = BorderRadius.all(Radius.circular(20));
  static const brB40 = BorderRadius.vertical(bottom: Radius.circular(40));
  static const brT40 = BorderRadius.vertical(top: Radius.circular(40));
  

  // size:
  static const sizeH60 = Size(double.maxFinite, 60);
}