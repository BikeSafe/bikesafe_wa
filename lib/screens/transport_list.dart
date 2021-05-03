import 'package:bikesafe_web/widgets/app_bar.dart';
import 'package:bikesafe_web/widgets/enhanced_text.dart';
import 'package:bikesafe_web/widgets/generic_button.dart';
import 'package:bikesafe_web/widgets/normal_text.dart';
import 'package:bikesafe_web/widgets/title_text.dart';
import 'package:flutter/material.dart';

class TransListScreen extends StatefulWidget {
  static String routeName = "TransListScreen";
  @override
  _TransListScreenState createState() => _TransListScreenState();
}

class _TransListScreenState extends State<TransListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: "Bikesafe"),
      body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ListView(children: <Widget>[
              Center(child: TitleText("Tus transportes")),
              DataTable(
                    columns: [
                      DataColumn(label: Center(child: NormalText('Tipo'))),
                      DataColumn(label: Center(child: NormalText('Características'))),
                      DataColumn(label: Center(child: NormalText('Color'))),
                      DataColumn(label: Center(child: NormalText('Delete'))),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Bicicleta')),
                        DataCell(Text('Rin 38 cambios shimano')),
                        DataCell(Text('Negro')),
                        DataCell(Icon(Icons.delete)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Patineta')),
                        DataCell(Text('Tabla de montar')),
                        DataCell(Text('Rojo')),
                        DataCell(Icon(Icons.delete)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Scotter')),
                        DataCell(Text('Marca sjkduj')),
                        DataCell(Text('Plata')),
                        DataCell(Icon(Icons.delete)),
                      ]),
                                            DataRow(cells: [
                        DataCell(Text('Bicicleta')),
                        DataCell(Text('Rin 38 cambios shimano')),
                        DataCell(Text('Negro')),
                        DataCell(Icon(Icons.delete)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Patineta')),
                        DataCell(Text('Tabla de montar')),
                        DataCell(Text('Rojo')),
                        DataCell(Icon(Icons.delete)),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Scotter')),
                        DataCell(Text('Marca sjkduj')),
                        DataCell(Text('Plata')),
                        DataCell(Icon(Icons.delete)),
                      ]),
                    ],
                    
                  ),
            ]),
      )
      )
      );
  }
}
