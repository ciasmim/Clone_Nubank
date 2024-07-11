import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_interface/controllers/home_controller.dart';
import 'package:nubank_interface/utils/colors_standart.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({super.key});

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _options(),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          _welcome()
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: secondaryPurple),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            MdiIcons.accountOutline,
          ),
        ),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return IconButton(
                  onPressed: () => controllerHomePage.showBalance(),
                  icon: Icon(
                    controllerHomePage.isBalanceVisible? MdiIcons.eyeOutline: MdiIcons.eyeOff,
                    color: Colors.white,
                  ));
            }),
        IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.helpCircleOutline,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_add_alt_1,
              color: Colors.white,
            ))
      ],
    );
  }

  _welcome() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 20,
        bottom: 20,
      ),
      child: Text(
        'Olá, Iasmim',
        style: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
