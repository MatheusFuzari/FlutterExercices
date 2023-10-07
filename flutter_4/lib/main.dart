import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Task extends StatelessWidget {
  final String texto;
  const Task(
    {super.key, required this.texto}
  );
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                  color: Colors.grey,
                  width: 80,
                  height: 105,
                  ),
                  Container(
                    color: Colors.white,
                    width: 220,
                    height: 105,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: 
                        Text(
                          texto,
                          style: const TextStyle(
                          fontSize: 19,
                          ),
                        ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(texto),
                          duration: const Duration(seconds: 1),
                        )
                      );
                    },
                    style: ButtonStyle(
                      foregroundColor:MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                      ),
                      
                    ),
                    child: const Icon(Icons.arrow_drop_up,size: 30,),
                  ),
                ],
              ),
              Container(
                color: Colors.blue,
                height: 60,
                width: 400,
              ),
            ],
          ),
        ],
      );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "teste!",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body: ListView(
            children: const [
            Task(texto: "Aprender Flutter",),
            Task(texto: "Vai tomar no cu",),
            Task(texto: "Amo gatinhos",),
            Task(texto: "Jogo lol",),
            Task(texto: "Beba água",),
            Task(texto: "Coma frutas",),
            ],
          ),
        ),
      );
  }
}
