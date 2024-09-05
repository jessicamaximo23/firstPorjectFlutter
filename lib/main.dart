import 'package:flutter/material.dart';

void main() {
  // Função principal que inicia o aplicativo Flutter
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key}); // Correção no construtor da classe MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstDesign(),

      );
  }
}

class MyFirstDesign extends StatelessWidget {
   MyFirstDesign({super.key}); // Construtor correto da classe MyFirstDesign

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My first Design Flutter Page"), // Use const para texto estático
      ),
      body: Center(//Center helps you to align widgets in center

        child: Column( // Column helps to align all the widgets in vertical
          //children= usamos para mais de uma objetos

          children: [
            const SizedBox(height: 20,),
            const Text("Iam one"),
            const Text("Iam two"),
            const Text ("I am Two", style: TextStyle(fontSize: 55,),),
            const SizedBox(height: 30,),
            const Icon(Icons.beach_access, color: Colors.green,size: 56,),
            const Icon(Icons.account_box, color: Colors.red,size: 56,),
            const SizedBox(height: 10,),
            //Nao esquecer as virgulas = delimiter

            //create a button which could be actionable
            ElevatedButton(onPressed: () {

              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome")));

            }, child: const Text("Login")),
            //onpressed = could be action

            SizedBox(height: 30,),
            Container(
              height: 60,
              width: 100,
              color: Colors.orange,
            )


          ],
        ) // Use const para o texto estático


      ),
    );
  }
}
