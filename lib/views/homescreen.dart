import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_textfield/controllers/provider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('full');
    return Scaffold(
        appBar: AppBar(
          title: const Text('Field saver'),
        ),
        body: Consumer<TestProvider>(
          builder: (context, value, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    value.value,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      controller: value.fieldcontroller,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Something'),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print('only this build');
                        value.adder();
                      },
                      child: const Text('Submit')),
                ],
              ),
            );
          },
        ));
  }
}
