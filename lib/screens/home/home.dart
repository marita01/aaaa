import 'package:flutter/material.dart';
import 'package:parking/screens/meditacao/meditacao.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 181, 221, 136),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 70.0,
              height: 70.0,
            ),
            const SizedBox(width: 10.0),
            const Text(
              'Caminho Sereno',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'new_habit');
        },
        backgroundColor: const Color.fromARGB(255, 59, 121, 63),
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomContainer(
            title: 'Meditação',
            iconPath: 'assets/meditacao02.jpg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (contexto) => Meditacao()),
              );
            },
          ),
          CustomContainer(
            title: 'Respiração',
            iconPath: 'assets/respiracao.jpg',
            onTap: () {}, // Adicione a funcionalidade conforme necessário
          ),
          CustomContainer(
            title: 'Alongamento',
            iconPath: 'assets/alongamento.png',
            onTap: () {}, // Adicione a funcionalidade conforme necessário
          ),
          CustomContainer(
            title: 'Leitura',
            iconPath: 'assets/leitura.jpeg',
            onTap: () {}, // Adicione a funcionalidade conforme necessário
          ),
          CustomContainer(
            title: 'Massagem',
            iconPath: 'assets/massagem.jpg',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String title;
  final String? iconPath;
  final VoidCallback onTap;

  const CustomContainer({
    super.key,
    required this.title,
    this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 181, 221, 136),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          if (iconPath != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                iconPath!,
                width: 60.0,
                height: 60.0,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(width: 20.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.green.shade900,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: onTap,
            color: Colors.green.shade900,
          ),
        ],
      ),
    );
  }
}
