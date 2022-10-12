import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeigth() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeigth(double pixels) {
    double x = getScreenHeigth() / pixels; // 844:200 = 4.22
    return getScreenHeigth() / x; // 844 : 4.22
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
