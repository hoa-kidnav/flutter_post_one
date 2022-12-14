import 'package:demo/helper.dart';
import 'package:demo/page_updateprofile.dart';
import 'package:flutter/material.dart';
import 'mainpage.dart';
import 'page_login.dart';
import 'page_register.dart';
import 'page_uploadavatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter connection',
      theme: ThemeData(
        primarySw atch: Colors.blueGrey,
      ),
      home: const bai1(),
    );
  }
}

class bai1 extends StatelessWidget {
  const bai1({super.key});
  void nextPage(BuildContext context, Widget page) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    const textStyleTieuDe = TextStyle(
      fontSize: 24.0,
      height: 1.7,
      color: Colors.green,
    );
    const textStyleCommand = TextStyle(
      fontSize: 20.0,
      height: 1.5,
      color: Colors.blueGrey,
    );
    return Scaffold(
      appBar: AppBar(title: Text("multiplier application")),
      body: Stack(children: [
        Container(
          width: size.width,
          height: size.height,
        ),
        Container(
          height: 0.7 * size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
            alignment: Alignment(0, 1),
            fit: BoxFit.cover,
            image: AssetImage("assets/images/inthe.jpg"),
          )),
          alignment: Alignment.center,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: size.width,
            height: 0.3 * size.height,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  style: textStyleTieuDe,
                  "Welcome to S-Connection",
                
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Helper.newPage(context, PageRegister());
                      },
                      icon: const Icon(Icons.app_registration, size: 20),
                      label: const Text(style: textStyleCommand, "Register"),
                    ),
                    TextButton.icon(
                      onPressed: () {
                        Helper.newPage(context, PageLogin());
                      },
                      icon: const Icon(Icons.login, size: 20),
                      label: const Text(style: textStyleCommand, "Login"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ]),
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
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
    final List<int> colorCodes = <int>[600, 500, 100, 600, 500, 100];

    var grid1 = GridView.count(
      padding: const EdgeInsets.all(8),
      crossAxisCount: 2,
      scrollDirection: Axis.horizontal,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(6, (index) {
        return Container(
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('item ${entries[index]}')),
        );
      }),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          constraints: BoxConstraints.expand(height: 400),
          color: Colors.yellow,
          child: grid1,
        ));
  }
}
