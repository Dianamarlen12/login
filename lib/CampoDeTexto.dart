import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiCampoDeTexto extends StatelessWidget{
  // Constructor de la clase
  MiCampoDeTexto(this.hint, this.miIcono, this.validator);
  final String hint;
  final Icon miIcono;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 30.0, right: 30),
      child: new TextFormField(
        validator: validator,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20),
            hintText: this.hint,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.cyan,
                  width: 3
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Colors.cyan,
                  width: 3
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(
                left: 10, right: 10,
              ),
              child: this.miIcono,
            )
        ),
      ),
    );
  }
// INVESTIGAR COMO SE USA EL "DROP DOWN MENU"
}