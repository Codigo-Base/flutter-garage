import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_garage/ui/widget/rounded_button.dart';

class ColumnLayoutPage extends StatelessWidget {
  const ColumnLayoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(color: Colors.white);

    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          title: Text('Column layout')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: LayoutBuilder(
          builder: (_, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'Welcome to our gym\nHere you can improve yourself',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(height: 1.5),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            'assets/images/fitnessImage.png',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: RoundedButton(
                            minWidth: 150,
                            onPressed: () {},
                            child: Text('Login'.toUpperCase(), style: textStyle),
                          ),
                        )
                      ],
                    ),
                    Expanded(child: SizedBox.shrink()),
                    RoundedButton(
                      radius: BorderRadius.vertical(top: Radius.circular(20)),
                      onPressed: () {},
                      child: Text('Know more'.toUpperCase(), style: textStyle),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
