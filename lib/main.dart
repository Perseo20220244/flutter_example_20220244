import 'package:flutter/material.dart'; // Una lista de cosas de las que depende la aplicacion

void main() {
  // funcion principal
  runApp(const MyApp()); // runApp es el root del widget tree
  // runApp es un metodo del framework, toma cualquier widget que le das y lo pone en la cima de la jerarquia de widgets
}

class MyApp extends StatelessWidget {
  // clase MyApp que se extiende de la super clase StatelessWidget
  const MyApp({super.key}); // constructor
  // todo widget debe tener un metodo build
  @override // Sobre escribe el metodo build
  Widget build(BuildContext context) {
    // este metodo describe como construir cada widget
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
  // Widget con estado
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
      // widget para cambiar el estado de otro widget
      // instrucciones de ejecucion
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++; // variable privada con incremento
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
      // retorna scaffold que es el 'lienzo' de la aplicacion
      appBar: AppBar(
        //widget para una barra que forma parte de la estructura de la aplicacion
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context)
            .colorScheme
            .inversePrimary, // propiedad hijo del widget AppBar
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget
            .title), // propiedad hijo del widget AppBar que a su vez tiene un widget de texto
      ),
      body: Center(
        // widget body que es el cuerpo de la aplicacion
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
          mainAxisAlignment:
              MainAxisAlignment.center, // widget de posicionamiento central
          children: <Widget>[
            const Text(
              //  widget de texto para mostrar en pantalla un texto
              'You have pushed the button this many times:',
            ),
            Text(
              // widget que muestra el valor de _counter que se va actualizando o cambiando de estado
              '$_counter',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium, // style es una propiedad del widget de texto
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // widget para insertar bonotnes en la aplicacion
        onPressed:
            _incrementCounter, // propiedad hijo del widget que dice esperar una accion al presionar el boton y se llama a la variable privada _incrementCounter
        tooltip: 'Increment', // widget que muestra un string
        child: const Icon(Icons
            .add), // propiedad hico que muestra un widget que no puede cambiar al ser constante.
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
