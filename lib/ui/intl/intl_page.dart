import 'package:flutter/material.dart';
import 'package:flutter_garage/l10n/generated/l10n.dart';

class IntlPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final space = const SizedBox(height: 16);
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text('Intl Plugin'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Title(S.current.pageHomeConfirm),
              space,
              Title(S.current.pageHomeWelcome('Jose')),
              space,
              Title(S.current.pageHomeWelcomeGender('female')),
              space,
              // https://www.unicode.org/cldr/cldr-aux/charts/29/supplemental/language_plural_rules.html
              Title(S.current.pageNotificationsCount(0)),
              space,
              Title(S.current.pageNotificationsCount(3)),
            ],
          ),
        ));
  }
}

class Title extends StatelessWidget {
  const Title(this.text, {Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 30));
  }
}


