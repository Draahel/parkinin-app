import 'package:flutter/material.dart';

class CustomRolesButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;
  final String value;

  const CustomRolesButton({
    super.key, 
    required this.icon,
    required this.value,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon( size: 100, icon ),
          Text(
            style: const TextStyle(fontSize: 20),
            value
          ),
        ],
      ),
    );
  }
}