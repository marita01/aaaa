import 'package:flutter/material.dart';
import 'package:parking/model/vehicle_type.dart';
import 'package:parking/screens/home/home.dart';
import 'package:parking/screens/shared/custom_appbar.dart';
import 'package:parking/screens/shared/custom_dropdown_menu.dart';
import 'package:flutter/material.dart';
import 'package:parking/screens/habit_new/habit_new.dart';


class NewHabit extends StatelessWidget {
  NewHabit({super.key});
  final _listOfTypes = VehicleType.values.map((item) => item.name).toList();
  final _listOfVacancies = List.generate(10, (index) => "Vaga ${index + 1}");
  final _entryTimeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Seja positivo, seja feliz',
            style: TextStyle(
              color: Color.fromARGB(255, 253, 247, 247),
            ),
          ),
        ),
        backgroundColor:
            Color.fromARGB(255, 48, 156, 44), // Cor do fundo do AppBar
        elevation:
            0, // Remove a sombra da AppBar para o texto centralizado ficar mais visível
      ),
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            height: 70.0,
            width: 0.5,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 247, 213),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Novos Hábitos',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 78, 141, 76),
                        ),
                      ),
                      SizedBox(height: 3),
                    ],
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: Color.fromARGB(
                        255, 117, 187, 115), // Cor de fundo (opcional)
                    child: IconButton(
                      icon: Icon(Icons.add,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {
                        Navigator.pushNamed(context, 'habit_new');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 247, 213),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rezar',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 78, 141, 76),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'A oração fornece respostas. Orar pode acalmar seu sistema nervoso.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(141, 196, 139, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: Color.fromARGB(
                        255, 117, 187, 115), // Cor de fundo (opcional)
                    child: IconButton(
                      icon: Icon(Icons.add,
                          color: const Color.fromARGB(255, 230, 230, 230)),
                      onPressed: () {
                        // Adicione aqui a lógica para adicionar
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 247, 213),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Beber água',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 78, 141, 76),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Seu corpo é composto por cerca de 60% de água. Beber água ajuda a colaborar com sua saúde.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(141, 196, 139, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: Color.fromARGB(255, 117, 187, 115), // Cor de fundo
                    child: IconButton(
                      icon: Icon(Icons.add,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 247, 213),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Acordar cedo',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 78, 141, 76),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Quando você acorda cedo, faz você se sentir mais feliz.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(141, 196, 139, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: Color.fromARGB(255, 117, 187, 115), // Cor de fundo
                    child: IconButton(
                      icon: Icon(Icons.add,
                          color: const Color.fromARGB(255, 255, 251, 251)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 247, 213),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dar um passeio',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 78, 141, 76),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Fazer uma caminhada ao ar livre permite-lhe desfrutar de uma mudança de cenário, aliviando o stress e a ansiedade.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(141, 196, 139, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: Color.fromARGB(255, 117, 187, 115), // Cor de fundo
                    child: IconButton(
                      icon: Icon(Icons.add,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
