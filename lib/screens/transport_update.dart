import 'package:bikesafe_web/widgets/app_bar.dart';
import 'package:bikesafe_web/widgets/enhanced_text.dart';
import 'package:bikesafe_web/widgets/generic_button.dart';
import 'package:bikesafe_web/widgets/normal_text.dart';
import 'package:bikesafe_web/widgets/title_text.dart';
import 'package:flutter/material.dart';

class TransUpdateScreen extends StatefulWidget {
  static String routeName = "TransUpdateScreen";
  @override
  _TransUpdateScreenState createState() => _TransUpdateScreenState();
}

class _TransUpdateScreenState extends State<TransUpdateScreen> {

  var _lista = ['Bicicleta','Patineta','Scotter'];
  String _vista = 'Seleccione un tipo de transporte';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: "Bikesafe"),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleText("Modifica tus transportes"),
            NormalText("Actualiza sus datos "),
            DropdownButtonFormField(
            items: _lista.map((String a){
              return DropdownMenuItem(
                value: a,
                child: Text(a));
            }).toList( ),
            onChanged: (_value)=>{
              setState((){
                _vista = _value;
              })
            },
            hint: Text(_vista),
            ),
            EnhancedText(
              null,
              "Características",
              autovalidate: false,
            ),
            EnhancedText(
              null,
              "Color",
              autovalidate: false,
            ),
            GenericButton("Guardar", onPressed: () {
              Navigator.of(context);
            })
          ],
        ),
      )),
    );
  }
}
