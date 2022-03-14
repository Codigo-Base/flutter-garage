import 'package:flutter/material.dart';

class GesturesPage extends StatelessWidget {
  const GesturesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: GesturesView(),
    );
  }
}

class GesturesView extends StatefulWidget {
  const GesturesView({Key? key}) : super(key: key);

  @override
  _GesturesViewState createState() => _GesturesViewState();
}

class _GesturesViewState extends State<GesturesView> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 100,
            child: Stack(
              children: <Widget>[
                _CircledButton(
                  size: 100,
                  onTap: () => _incrementCounter(2),
                   onTapDown: () => _incrementCounter(3),
                  color: Theme.of(context).colorScheme.secondary,
                  child: Icon(Icons.add, color: Colors.black),
                ),
                _CircledButton(
                  size: 100,
                  onTap: () => _decrementCounter(1),
                  //color: Theme.of(context).colorScheme.secondary,
                  child: Icon(Icons.remove, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }

  void _incrementCounter(int value) {
    setState(() => _counter += value);
  }

  void _decrementCounter(int value) {
    setState(() => _counter -= value);
  }
}

class _CircledButton extends StatelessWidget {
  const _CircledButton({
    Key? key,
    required this.size,
    this.behavior,
    this.onTap,
    this.onTapDown,
    this.color,
    this.child,
  }) : super(key: key);

  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onTapDown;
  final HitTestBehavior? behavior;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child: GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.translucent,
          onTapDown: (_) => onTapDown?.call(),
          child: Container(
            alignment: Alignment.center,
            color: color,
            child: child,
          ),
        ),
      ),
    );
  }
}
