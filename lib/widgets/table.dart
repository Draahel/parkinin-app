import 'package:flutter/material.dart';
import 'package:navigator/assets/vehicles_data.dart';

class CustomTable extends StatelessWidget {
  final List<Vehicles> data;
  const CustomTable({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Vehiculos Registrados'),
        DataTable(
          headingRowColor: MaterialStateProperty.all(Colors.deepPurple),
          headingTextStyle: const TextStyle(color: Colors.white),
          columnSpacing: 30,
          columns: const <DataColumn>[
            DataColumn(
              label: Expanded(
                child: Text('Propietario')
              )
            ),
            DataColumn(
              label: Expanded(
                child: Text('Placa')
              )
            ),
            DataColumn(
              label: Expanded(
                child: Text('Visita a:')
              )
            ),
            DataColumn(
              label: Expanded(
                child: Text('Acciones')
              )
            )
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('Daniel Mercado')),
                const DataCell(Text('BIM64G')),
                const DataCell(Text('Sara Acuna')),
                DataCell(
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
                    ],
                  )
                ),
              ]
            ),
            DataRow(
              cells: <DataCell>[
                const DataCell(Text('Daniel Mercado')),
                const DataCell(Text('BIM64G')),
                const DataCell(Text('Sara Acuna')),
                DataCell(
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
                    ],
                  )
                ),
              ]
            )
          ],
        ),
      ],
    );
  }
}



