import 'package:flutter/material.dart';
import 'package:navigator/assets/vehicles_data.dart';
import 'package:navigator/helpers/navigation.dart';
import 'package:navigator/widgets/app_bar.dart';
import 'package:navigator/widgets/table.dart';

class Dashboard extends StatelessWidget {
  
  final List<Vehicles> data = vehicles;
  
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(name: 'Admin Name'),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(const Size.fromHeight(50)), 
              shape: MaterialStateProperty.all(LinearBorder.none)
            ),
            onPressed: ()=>navigator(context, '/new'), 
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_rounded, size: 22,),
                Text('Registrar Vehiculos', style: TextStyle(fontSize: 18),)
              ],
            )
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomTable(data: data),
          )
        ],
      )
    );
  }
}