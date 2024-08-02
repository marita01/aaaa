import 'package:flutter/material.dart';


class HabitCard extends StatelessWidget {
  final String habitName;

  const HabitCard({
    super.key,
    required this.habitName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildHabitSection('Meditação', 'assets/meditacao.jpg', context),
              _buildHabitSection('Leitura', 'assets/leitura.jpeg', context),
              _buildHabitSection(
                  'Alongamento', 'assets/alongamento.png', context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHabitSection(
      String habitLabel, String imagePath, BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          width: 48,
        ),
        const SizedBox(width: 8),
        Text(
          habitName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
