import 'package:flutter/material.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class Notifactions extends StatefulWidget {
  const Notifactions({super.key});

  @override
  State<Notifactions> createState() => _NotifactionsState();
}

class _NotifactionsState extends State<Notifactions> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
            _income()
        ],
      ),

    );
  }

  _income(){
    return Container(
      width: MediaQuery.of(context).size.width * .7 ,

      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
        
       ),
       child: RichText(
        text: TextSpan(
          children:  [
            const TextSpan(text: 'Seu ', style: TextStyle(color: Colors.black, fontSize: 16)),
            TextSpan(text: 'informe de rendimentos ', style: TextStyle(color: backgroundColor, fontSize: 16)),
            TextSpan(text: 'de 2022 já está.... ', style: TextStyle(color: Colors.black, fontSize: 16))
          ]
        )
       ),

    );
  }
}