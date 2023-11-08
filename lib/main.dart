import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_textfield/controllers/provider.dart';
import 'package:provider_textfield/views/homescreen.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TestProvider(),
      child: MaterialApp(
        home: Homescreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
