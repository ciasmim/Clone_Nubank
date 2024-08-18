import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 9.637,43';
  bool isBalanceVisible = true;
  String creditCardValue = 'R\$ 4.564,04';

  void showBalance() {
    isBalanceVisible = !isBalanceVisible;
    update();
  }
}
