List<Vehicles> vehicles = [
  Vehicles(placa: 'BIM64G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
  Vehicles(placa: 'BIM65G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
  Vehicles(placa: 'BIM66G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
  Vehicles(placa: 'BIM67G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
  Vehicles(placa: 'BIM68G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
  Vehicles(placa: 'BIM69G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
  Vehicles(placa: 'BIM70G', owner: 'Daniel Mercado', visitTo: 'Sara Acuna'),
];

class Vehicles{
  final String placa;
  final String owner;
  final String visitTo;

  Vehicles({
    required this.placa,
    required this.owner,
    required this.visitTo
  });

}