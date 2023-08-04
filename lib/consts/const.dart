import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); //nesne üretilemez

  static const String title = 'Pokedex';
  static TextStyle gettitleStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFonstSize(40),
    );
  }

  static TextStyle getPokemonmodelTextStyle() {
    return  TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFonstSize(26),
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return  TextStyle(
      color: Colors.white,
      fontSize: _calculateFonstSize(20),
    );
  }

  static _calculateFonstSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.8).sp;
    }
  }
  static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: _calculateFonstSize(20), fontWeight: FontWeight.bold, color: Colors.black);
  }
  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFonstSize(16), color: Colors.black);
  }
}
