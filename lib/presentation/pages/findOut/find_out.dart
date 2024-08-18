import 'package:flutter/material.dart';
import 'package:nubank_interface/domains/models/card_find_out.dart';

class FindOut extends StatelessWidget {
  const FindOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Descubra mais',
           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
           const SizedBox(width: 20,),
           _findOutCards(),
        ],
      ),
    );
  }

  _findOutCards(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CardFindOut(imagem: 'assets/image/nubank_card.jpg', 
          title: 'Parcelar compras no app', 
          description: 'Sua liberdade financeira \n começa com voce ..', 
          buttonText: 'Conhecer'),
          const SizedBox(width: 20,),

          CardFindOut(imagem: 'assets/image/portabilidade_salario.jpg', 
          title: 'Portabilidade de salário', 
          description: 'Sua liberdade financeira \n começa com voce ..', 
          buttonText: 'Conhecer'),

          const SizedBox(width: 20,),
          CardFindOut(imagem: 'assets/image/indique_amigos.jpg', 
          title: 'Indique seus amigos', 
          description: 'Sua liberdade financeira \n começa com voce ..', 
          buttonText: 'Conhecer')
        ],
      ),
    );
  }

}