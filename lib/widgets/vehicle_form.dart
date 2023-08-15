import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {


  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {

  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Nombres', border: OutlineInputBorder(), filled: true, fillColor:  Color.fromARGB(255, 228, 218, 253)),
            
          ),
          const SizedBox(height: 20,),
          const TextField(
            decoration: InputDecoration(labelText: 'Apellidos', border: OutlineInputBorder(), filled: true, fillColor:  Color.fromARGB(255, 228, 218, 253)),
          ),
          const SizedBox(height: 20,),
          const TextField(
            decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(), filled: true, fillColor:  Color.fromARGB(255, 228, 218, 253)),
          ),
          const SizedBox(height: 20,),
          const TextField(
            decoration: InputDecoration(labelText: 'Placa', border: OutlineInputBorder(), filled: true, fillColor:  Color.fromARGB(255, 228, 218, 253)),
          ),
          const SizedBox(height: 20,),
          DropdownButtonFormField(
            items: const [
              DropdownMenuItem(child: Text('Any 0')),
            ], 
            onChanged: (any){}, 
            decoration: const InputDecoration(
              labelText: 'Visita a:', 
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Color.fromARGB(255, 228, 218, 253)
            ),
          )
        ],
      ),
      
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}