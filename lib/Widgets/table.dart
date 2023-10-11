

import 'package:flutter/material.dart';

class table extends StatefulWidget {

  List<String> cColumns;
  int rows;
  List<bool> selectable;

  table(this.cColumns, this.rows,this.selectable);


  State<table> createState() => _tableState();
}

class _tableState extends State<table> {




  @override
  Widget build(BuildContext context) {

    int rows=widget.rows;
    List<String> cColumns= widget.cColumns;

    List<bool> check = widget.selectable;
    int endTable = 0;


    if(check.isEmpty)
    {
       endTable = cColumns.length;
    }else{

      endTable = cColumns.length-1;
    }

    return DataTable(
      columns: <DataColumn>[
        for(int i=0 ; i < cColumns.length ; i++)
        DataColumn(
          label: SizedBox(
              width: 110,
              child: Text(cColumns[i])
          ),
        ),

      ],
      rows: List<DataRow>.generate(rows,
            (int index) =>  DataRow(
            cells: <DataCell>[
              for(int i=0 ; i < endTable ; i++)
              const DataCell(
                Text('1'),
              ),
              if(check.isNotEmpty)
               DataCell(
                Center(
                    child: CheckboxListTile(
                      value: check[index],
                      onChanged:  (bool? value) {
                        setState(() {
                          check[index]= value!;
                        });
                      },)
                ),
              )

            ]
        ),
      ),
    );


  }
}


/*
gestion de envios
correo elect inicio sesion
 */




