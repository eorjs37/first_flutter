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
      home: const SafeArea(
        child: MyScaffold(),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget{
  const MyAppBar({required this.title,super.key});

  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(color: Colors.blue[400]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          const IconButton(
            icon:Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }

}

class MyScaffold extends StatelessWidget{
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child:Column(
        children: [
          MyAppBar(title: Text('ExampleTitle',style: Theme.of(context).primaryTextTheme.titleLarge,)),
          const Expanded(child: Center(child: Text('Hello World!')))
        ],
      )
    );
  }
}

