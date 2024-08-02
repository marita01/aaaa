import 'package:flutter/material.dart';
import 'package:parking/screens/configurations/components/Custom_switch.dart';
import 'package:parking/screens/shared/custom_appbar.dart';

class Configurations extends StatelessWidget {
const Configurations({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar('configurações'),
      body: Padding(padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomSwitch(label: 'Lembrar meus dados de acesso', isActive: true,), 
          CustomSwitch(label: 'Autenticação de dois fatores',), 
          CustomSwitch(label: 'Notificações',),
        ],
      ),
      ),
    );
  }
}