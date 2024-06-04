import 'package:flutter/material.dart';
import 'package:rest_api_project_2/homepage.dart';

void main() {
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),
    );
  }
}
