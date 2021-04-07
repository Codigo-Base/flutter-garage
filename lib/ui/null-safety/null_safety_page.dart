import 'package:flutter/material.dart';

class NullSafetyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _processExamples();
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Null Safety'),
      ),
      body: Center(child: Text('Executing ...'))
    );
  }

  void _processExamples() {
    print('Init process');
  }
}
