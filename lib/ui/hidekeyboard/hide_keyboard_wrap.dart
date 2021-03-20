
import 'package:flutter/material.dart';

class HideKeyboardWrap extends StatelessWidget {

  final Widget child;

  const HideKeyboardWrap({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => primaryFocus.unfocus(),
      child: child,
    );
  }
}
