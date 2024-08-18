import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Investments extends StatelessWidget {
  const Investments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _textInvestmentsChevron(),
          _investmentesValue(),
        ],
      ),
    );
  }

  _textInvestmentsChevron() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Investimentos',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _investmentesValue() {
    return const Padding(
        padding:  EdgeInsets.only(top: 16.0),
        child:  Text(
            'O jeito Nu de investir: que cabe no seu bolso, \n a partir de R\$1. Saiba mais.',
            style: TextStyle(color: Colors.grey)));
  }
}
