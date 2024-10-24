import 'package:flutter/material.dart';

void main() {
  runApp(Examplestate());
}

class Examplestate extends StatelessWidget {
  const Examplestate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "latihan flutter", home: firstscreen());
  }
}

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("layar pertama"),
          backgroundColor: Colors.lightBlueAccent,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        body: Text("hello word"));
  }
}

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({super.key, required this.text});

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textsize = 16.0;
  bool _box = false;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _box
              ? Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(3, 6),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    widget.text,
                    style: TextStyle(fontSize: _textsize),
                  ),
                )
              : Text(
                  widget.text,
                  style: TextStyle(fontSize: _textsize),
                )
                ElevatedButton(
                  child:Text("perbesar"),
                  onPressed: (){
                    setState(() {
                      _textsize=35.0;
                      _box= true;
                    });
                  },
                  ),
        ]);
  }
}
