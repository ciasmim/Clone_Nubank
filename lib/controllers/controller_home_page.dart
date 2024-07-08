import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 873.244,00';
  bool isBalanceVisible = true;

  void showBalance() {
    isBalanceVisible = !isBalanceVisible;
    update();
  }
}
