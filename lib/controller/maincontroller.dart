import 'package:get/get.dart';


class FirstSeatController extends GetxController {
  static FirstSeatController get to => Get.find();
  final _adminCode = ''.obs;

  String get adminCode => _adminCode.value;
  set adminCode(String value) => _adminCode.value = value;
  void setAdminCode(String value) => _adminCode.value = value;

}