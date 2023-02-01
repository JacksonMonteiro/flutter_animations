import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({super.key});

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {
  double _margin = 0;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                  _color = Colors.purple;
                  _width = 400;
                  _opacity = 0;
                });
              },
              child: Text("Animate Container"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _margin = 0;
                  _color = Colors.blue;
                  _width = 200;
                  _opacity = 1;
                });
              },
              child: Text("Reset Animation Effect"),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              child: Container(
                width: 150,
                height: 40,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
