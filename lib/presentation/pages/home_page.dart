import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_interface/domains/models/header_home.dart';
import 'package:nubank_interface/presentation/pages/account/account_home.dart';
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
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            children: [
              HeaderHome(),
              AccountHome(),
            ],
          ),
        ),
      ),
    );
  }
}

//trabalhando com funcáo que retorna um widget, por questoes de padrao de organizaçao
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
