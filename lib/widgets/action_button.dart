import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {

  final VoidCallback? onPressed;
  final IconData icon;
  const ActionButton({
    super.key, this.onPressed, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Icon(Icons.edit));
  }
}