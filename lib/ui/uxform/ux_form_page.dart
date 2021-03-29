import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_garage/ui/hidekeyboard/hide_keyboard_wrap.dart';

class UxFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('UX Form'),
      ),
      body: HideKeyboardWrap(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Nombre'
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: 'Teléfono'
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'Dirección'
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.send,
                  onFieldSubmitted: (_) => _sendForm(),
                  decoration: InputDecoration(
                    hintText: 'Email'
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
                  onPressed: _sendForm,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _sendForm() {
    primaryFocus?.unfocus();
    print('The form has been submitted');
  }
}
