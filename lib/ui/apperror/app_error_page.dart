import 'package:flutter/material.dart';

class AppErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('App Error'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          // Text("Hola a todos!", style: TextStyle(fontSize: 20)),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.", style: TextStyle(fontSize: 20)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.error_outline),
        onPressed: () {
          Future.delayed(Duration(seconds: 1), () {
            throw UnimplementedError();
          });
        },
      ),
    );
  }
}
