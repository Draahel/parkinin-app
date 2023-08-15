import 'package:flutter/material.dart';
import 'package:navigator/helpers/navigation.dart';
import 'package:navigator/widgets/app_bar.dart';
import 'package:navigator/widgets/vehicle_form.dart';

class RegisterVehicle extends StatelessWidget {
  const RegisterVehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(name: 'Admin Name'),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                  color: const Color.fromARGB(255, 213, 198, 255)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30.0),
                      decoration: const BoxDecoration(
                        border: Border(bottom: BorderSide(width: 1.0)),
                        color: Colors.deepPurple
                      ),
                      child: const Text('Formulario de registro', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),)
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 50,
                        left: 10,
                        right: 10,
                        top: 10
                      ),
                      child: CustomForm(),
                    )
                  ]
                ),
              ),
              const SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: ()=>navigator(context, '/dashboard'), child: const Text('Cancelar')),
                  const SizedBox(width: 30,),
                  ElevatedButton(onPressed: ()=>navigator(context, '/dashboard'), child: const Text('Reggistrar'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}