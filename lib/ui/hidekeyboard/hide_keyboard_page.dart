import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_garage/ui/hidekeyboard/hide_keyboard_wrap.dart';

class HideKeyboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Build form');
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Hide Keyboard'),
      ),
      body: HideKeyboardWrap(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                    hintText: 'Nombre'
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Apellidos'
                  ),
                ),
                SizedBox(height: 16),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 40,
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('ENVIAR'),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
    //FocusScope.of(context).unfocus();
    //primaryFocus.unfocus();
    //primaryFocus.unfocus(disposition: UnfocusDisposition.previouslyFocusedChild);
    //SystemChannels.textInput.invokeMethod('TextInput.hide');
  }
}
