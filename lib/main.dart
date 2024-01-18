import 'package:flutter/material.dart'; // importar paquete desde la ruta dada

void main() {
  // funcion que no retorna nada
  runApp(const MyApp()); // instrucciones
}

class MyApp extends StatelessWidget {
  // clase MyApp que se extiende de la super clase StatelessWidget
  const MyApp({super.key}); // Myapp es un constructor

  // This widget is the root of your application.
  @override // Sobre escribe la funcion build
  Widget build(BuildContext context) {
    // Metodo build
    // Es una funcion por que tiene lo que va retornar, identificador y parametros
    return MaterialApp(
      // valor de retorno. MaterialApp es un Widget
      title: 'Flutter Demo', // Variable title con tipo de dato string
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors
                .green), // Al objeto ColorScheme se le aplica el metodo fromSeed, dentro del cual se especifican sus parametros.
        useMaterial3: true, // valor booleano para useMaterial3
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // clase MyHomePage que extiende desde la super clase StatefulWidget
  const MyHomePage(
      {super.key, required this.title}); // inicializacion de MyhomePage

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title; // inicializador final para title

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // clase que se extiende de una superclase
  int _counter = 0; // declaracion de variable

  void _incrementCounter() {
    // metodo _incrementCounter que no regresa nada.
    setState(() {
      // instrucciones de ejecucion
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++; // variable con incremento
    });
  }

  @override
  Widget build(BuildContext context) {
    // metodo build que devuelve un widget
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // retorna scaffold
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment
              .center, // al objeto MainAxisAligment se le aplica el metodo center
          children: <Widget>[
            const Text(
              // inicializa la instancia Text
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
