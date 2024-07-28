import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _itemAction(icon: MdiIcons.clover, name: 'Área Pix', isFirst: true), 
            _itemAction(icon: MdiIcons.barcode, name: 'Pagar'),
            _itemAction(icon: MdiIcons.cash, name: 'Transferir'),
            _itemAction(icon: MdiIcons.cash, name: 'Depositar'),
            _itemAction(icon: MdiIcons.creditCard, name: 'Recarga'),
            _itemAction(icon: MdiIcons.heartOutline, name: 'Doação'),
          ],
        ),
      ),
    );
  }
}

_itemAction({required icon, required String name, bool ? isFirst}) {
  return Container(
    padding: (isFirst ?? false) ? const EdgeInsets.only(right: 7, left: 20) :
    const EdgeInsets.symmetric (horizontal: 7),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(48),
          ),
          child: Icon(icon),
        ),
        Text(name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );

}
