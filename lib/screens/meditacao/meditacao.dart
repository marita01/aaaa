import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Meditacao(),
    );
  }
}

class Meditacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meditação Guiada',
          style: TextStyle(
              color: Colors.white), // Define a cor do texto como branco
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color.fromARGB(255, 250, 250, 250), // Cor de fundo da tela
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Adicionando a imagem acima do texto
                Image.asset(
                  'assets/meditacao03.webp', // Substitua pelo caminho da sua imagem
                  width: 200, // Ajuste o tamanho conforme necessário
                  height: 200, // Ajuste o tamanho conforme necessário
                ),
                SizedBox(height: 20),
                Text(
                  'Bem-vindo à Meditação',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 59, 121, 63),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'A meditação demonstra ser um excelente antídoto para o estresse, que é a causa de muitas doenças em nosso tempo presente. O estresse afeta a liberação de hormônios importantes na corrente sanguínea. Os dois mais importantes são a serotonina e o cortisol.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Ação ao clicar no botão
                  },
                  child: Text('Iniciar Meditação'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                    backgroundColor: const Color.fromARGB(255, 59, 121, 63),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
