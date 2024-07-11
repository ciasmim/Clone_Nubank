import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/home_controller.dart';

class AccountHome extends StatefulWidget {
  const AccountHome({super.key});

  @override
  State<AccountHome> createState() => _AccountHomeState();
}

class _AccountHomeState extends State<AccountHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _accountChevron(),
          _balanceAccount(),
        ],
      ),
    );
  }

  _accountChevron() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Conta',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Icon(MdiIcons.chevronRight),
        ],
      ),
    );
  }

  _balanceAccount() {
    return GetBuilder(
        init: ControllerHomePage(),
        builder: (controller) {
          return Text(
            controller.balance,
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          );
        });
  }
}
