import 'package:flutter/material.dart';
import 'package:navigator/helpers/navigation.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {

  final String name;

  const CustomAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      leading: const Padding(
        padding: EdgeInsets.all(7.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://www.circumcisionpro.co.uk/wp-content/uploads/2021/05/avatar-profile-picture.jpg'),
        ),
      ),
      title: Text(
        style: const TextStyle(color: Colors.white, fontSize: 20),
        name
      ),
      actions: [
        PopupMenuButton(
          color: Colors.white,
          onSelected: (value){
            if (value == 'logOut') {
              navigator(context, '/');
            }
          },
          itemBuilder: (context)=>[
          const PopupMenuItem(
            value: 'Settings',
            child: Text('Settings'),
          ),
          const PopupMenuItem(
            value: 'logOut',
            child: Text('Cerrar Sesion'),
          ),
        ])
      ],
    );
  }
  
  @override
  Widget get child => Container();
  
  @override
  Size get preferredSize => const Size(120, 120);
  

}