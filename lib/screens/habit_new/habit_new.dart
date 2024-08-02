import 'package:flutter/material.dart';

class NewHabitForm extends StatefulWidget {
  @override
  _NewHabitFormState createState() => _NewHabitFormState();
}

class _NewHabitFormState extends State<NewHabitForm> {
  final _formKey = GlobalKey<FormState>();
  final _habitNameController = TextEditingController();
  final _habitDescriptionController = TextEditingController();

  String?
      _selectedFrequency; // Variável para armazenar a frequência selecionada
  TimeOfDay? _selectedReminder; // Variável para armazenar o horário do lembrete

  Future<void> _selectReminderTime(BuildContext context) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null && time != _selectedReminder) {
      setState(() {
        _selectedReminder = time;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png', // Caminho para a logo
              width: 70.0,
              height: 70.0,
            ),
            const SizedBox(width: 10.0),
            const Text(
              'Novo Hábito',
              style: TextStyle(
                color: Color.fromARGB(255, 253, 247, 247),
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 32, 100, 29),
        elevation: 0,
        centerTitle: true, // Garante que o conteúdo esteja centralizado
      ),
      backgroundColor: Color.fromARGB(255, 241, 241, 241),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 241, 206),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Color.fromARGB(255, 119, 202, 93)),
                ),
                child: TextFormField(
                  controller: _habitNameController,
                  decoration: InputDecoration(
                    labelText: 'Nome do Hábito',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome do hábito.';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 241, 206),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Color.fromARGB(255, 119, 202, 93)),
                ),
                child: TextFormField(
                  controller: _habitDescriptionController,
                  decoration: InputDecoration(
                    labelText: 'Descrição do Hábito',
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  ),
                  maxLines: 4,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira uma descrição do hábito.';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 241, 206),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Color.fromARGB(255, 119, 202, 93)),
                ),
                child: DropdownButtonFormField<String>(
                  value: _selectedFrequency,
                  decoration: InputDecoration(
                    labelText: 'Frequência',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  items: [
                    DropdownMenuItem(
                        value: 'Diariamente', child: Text('Diariamente')),
                    DropdownMenuItem(
                        value: 'Semanalmente', child: Text('Semanalmente')),
                    DropdownMenuItem(
                        value: 'Mensalmente', child: Text('Mensalmente')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedFrequency = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, selecione a frequência.';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 241, 206),
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: Color.fromARGB(255, 119, 202, 93)),
                ),
                child: ListTile(
                  title: Text(
                    _selectedReminder == null
                        ? 'Definir Lembrete'
                        : 'Lembrete: ${_selectedReminder!.format(context)}',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16.0,
                    ),
                  ),
                  trailing: Icon(Icons.alarm),
                  onTap: () => _selectReminderTime(context),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Adicione aqui a lógica para salvar o hábito
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Hábito adicionado!')),
                    );
                  }
                },
                child: Text('Adicionar Hábito'),
                style: ElevatedButton.styleFrom(
                  //Cor do texto do botão
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
