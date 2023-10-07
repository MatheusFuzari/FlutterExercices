import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'mw4m54320in40-'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void decrementCounter(){
    setState(() {
      if(_counter > 0){
        _counter--;
      }else{
        _counter = _counter;
      }
    });
  }
  void zeroCounter(){
    setState(() {
      _counter = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.redAccent, 
              width: 400, 
              height: 100,
              alignment: AlignmentDirectional.center,
              child: const Text(
                "Xesquedele!",style: TextStyle(fontSize: 22, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              color: Colors.orange,
              width: 400,
              height: 100,
              alignment: AlignmentDirectional.center,
              child: Text(
                '$_counter', style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("amem")
                  ),
                );
              }, child: const Text("Xesque dale")
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        width: 350,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          FloatingActionButton(
            onPressed: decrementCounter,
            tooltip: 'Decrement',
            backgroundColor: Colors.blue,
            splashColor: Colors.blueGrey,
            foregroundColor: Colors.orangeAccent,
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: zeroCounter,
            tooltip: 'Zero',
            backgroundColor: Colors.blue,
            splashColor: Colors.blueGrey,
            foregroundColor: Colors.white,
            child: const Icon(Icons.apple_rounded),
          ),
          FloatingActionButton.extended(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            label: const Text('Add'),
            backgroundColor: Colors.blue,
            splashColor: Colors.blueGrey,
            foregroundColor: Colors.orangeAccent,
            icon: const Icon(Icons.add),
          )
          ]
        ),
      ),
    );
  }
}
