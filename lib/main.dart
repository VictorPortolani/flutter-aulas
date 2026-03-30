import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0)),
      ),
      home: const MyHomePage(title: 'Aqui contém a Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 0;

  void acrescentarValor() {
    setState(() {
      contador++;
    });
  }
  void resetar(){
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Prog. de Disp. Móveis 1'), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                'Texto de Exemplo com Contador $contador',
              style: TextStyle(fontSize: 30)
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: resetar
              ), child: Text('Resetar'))
            ],
        )
        ),
        floatingActionButton: FloatingActionButton(onPressed: acrescentarValor,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.plus_one_sharp, color: Colors.white,),),
    );
  }
}
