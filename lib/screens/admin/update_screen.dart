import 'package:flutter/material.dart';
import 'package:navigator/widgets/app_bar.dart';

class Update extends StatelessWidget {
  const Update({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(name: 'Admin Name'),
      body: Center(
        child: Text('Editing...'),
      ),
    );
  }
}