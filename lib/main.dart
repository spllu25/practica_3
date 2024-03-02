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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Котики против собачек'),
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
  String text1='';
  String text2='';
  String text3='';

  void click1True() {
    setState(() {
      text1 = 'Приглашаем Вас на выставку питомцев с 01.06 до 30.06.';
      text2 = 'Поддержите своих любимцев и проголосуйте за кошечек!!!';
      text3='assets/images/cat.jpg';
    });
  }

    void click2True() {
      setState(() {
        text1 ='Приглашаем Вас на выставку питомцев с 01.06 до 30.06.';
            text2='Поддержите своих любимцев и проголосуйте за собачек!!!';
        text3='assets/images/dog.jpg';
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent ,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent ,
        title: Text(widget.title),
      ),
      body: Center(
        child:
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                  Text(
                    text1
                  ),
                      const SizedBox(
                        width: 200.0,
                        height: 25.0,
                      ),
                  Text(
                      text2
                  ),
                  ],
                  ),
                  const SizedBox(
                    width: 100.0,
                    height: 50.0,
                  ),
                  Container(
                    color: Colors.purpleAccent,
                    child: Image.asset(text3,width: 320, height: 240),
                  ),
                ],
            ),
            const SizedBox(
              width: 100.0,
              height: 150.0,
            ),
            const Text(
              'Кого вы любите?',
            ),
            const SizedBox(
              width: 100.0,
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            ElevatedButton(
              onPressed: () {click1True();},
              child: Text('Котиков'),
            ),
            const SizedBox(
              width: 100.0,
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {click2True();},
              child: Text('Собачек'),
            )
                ],
            ),
          ],
        ),
      ),
    );
  }
}
