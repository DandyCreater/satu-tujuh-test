import 'package:flutter/material.dart';

class Helper {
  firstFunction(String text) {
    int textInt = 0;
    String result = "";
    textInt = int.tryParse(text) ?? 0;

    for (int i = 0; i < textInt + 1; i++) {
      if (i == 1) {
        result = i.toString();
      } else {
        result = "$result $i";
      }
    }
    return result;
  }

  secondFunction(String text) {
    int textInt = 0;
    String result = "";
    textInt = int.tryParse(text) ?? 0;

    for (int i = 0; i < textInt + 1; i++) {
      if (i == 1) {
        result = i.toString();
      } else {
        result = "$result $i";
      }
    }

    for (int i = textInt; i > 0; i--) {
      if (i != textInt) {
        result = "$result $i";
      }
    }
    return result;
  }

  thirdFunction(String text) {
    int textInt = 0;
    String result = "";
    List<String> listData = [];
    textInt = int.tryParse(text) ?? 0;
    int angka = textInt * 2;
    listData.add(angka.toString());

    for (int i = 0; i < 5; i++) {
      if (i != 0) {
        int lastData = (int.tryParse(listData.last) ?? 0) + 11;
        listData.add(lastData.toString());
      }
    }

    for (int i = 0; i < listData.length; i++) {
      result = "$result ${listData[i]}";
    }
    return result;
  }

  fourthFunction(String text) {
    int textInt = 0;
    String result = "";
    List<String> listData = [];
    textInt = int.tryParse(text) ?? 0;

    for (int i = 0; i < textInt + 1; i++) {
      if (i == 1) {
        result = i.toString();
      } else if (i % 5 == 0) {
        result = "$result LIMA";
      } else if (i % 7 == 0) {
        result = "$result TUJUH";
      } else {
        result = "$result $i";
      }
    }
    return result;
  }
}
