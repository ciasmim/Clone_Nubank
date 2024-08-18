import 'package:get/get.dart';

class ControllerHomePage extends GetxController {
  String balance = 'R\$ 9637,43';
  bool isBalanceVisible = true;
  String creditCardValue = 'R\$ 4564,04';

  void showBalance() {
    isBalanceVisible = !isBalanceVisible;
    update();
  }
}
