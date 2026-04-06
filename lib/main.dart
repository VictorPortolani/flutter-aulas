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
  void diminuirValor() {
    setState(() {
      contador--;
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
        child: Text(
                'Texto de Exemplo com Contador $contador',
              style: TextStyle(fontSize: 30)
              ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: acrescentarValor,
            backgroundColor: Colors.green,
            child: Icon(Icons.plus_one_sharp, color: Colors.white,),),

            SizedBox(width: 10,),
            FloatingActionButton(onPressed: diminuirValor,
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.remove, color: Colors.white,),),

            SizedBox(width: 10,),
            FloatingActionButton(onPressed: resetar,
            backgroundColor: Colors.black,
            child: Icon(Icons.dangerous, color: Colors.white,),),

            SizedBox(width: 10,),
            FloatingActionButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tela2()));
            },
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.navigate_next, color: Colors.white,)),
          ],
        )
        
    );
  }
}

// TELA 2
class Tela2 extends StatelessWidget{
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela 2'),),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: (){
          Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          label: Text('Voltar'),
        )
      ),
   );
  }
}