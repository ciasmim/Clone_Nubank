import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/home_controller.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),

      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 12,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _limitDisplay(),
          _installments(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Cartão de crédito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Fatura atual', style: TextStyle(color: Colors.grey)),
        const SizedBox(
          height: 15,
        ),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.creditCardValue,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              );
            }),
      ],
    );
  }

  _limitDisplay() {
    return const Text(
      'Limite disponível de R\$ 20.000,00',
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          'Parcelar compras',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
