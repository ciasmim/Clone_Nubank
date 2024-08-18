import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_interface/domains/models/header_home.dart';
import 'package:nubank_interface/presentation/pages/account/account_home.dart';
import 'package:nubank_interface/presentation/pages/actions/menu_itens.dart';
import 'package:nubank_interface/presentation/pages/creditCard/credit_card.dart';
import 'package:nubank_interface/presentation/pages/creditCard/my_credits_card.dart';
import 'package:nubank_interface/presentation/pages/findOut/find_out.dart';
import 'package:nubank_interface/presentation/pages/investments/investments.dart';
import 'package:nubank_interface/presentation/pages/notification/notifactions.dart';
import 'package:nubank_interface/presentation/pages/security/security_life.dart';
import 'package:nubank_interface/presentation/pages/shopping/shopping.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderHome(),
              AccountHome(),
              MenuItens(),
              Divider(
                thickness: 1.6,
              ),
              CreditsCard(),
              Notifactions(),
              Divider(
                thickness: 1.6,
              ),
              CreditCard(),
              Divider(
                thickness: 1.6,
              ),
              Investments(),
              Divider(
                thickness: 1.6,
              ),
              SecurityLife(),
              Divider(
                thickness: 1.6,
              ),
              Shopping(),
              Divider(
                thickness: 1.6,
              ),
              FindOut(),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSize _appBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(0),
    child: AppBar(
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: backgroundColor,
    ),
  );
}
