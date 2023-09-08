import 'package:desktop_app/Widgets/table.dart';
import 'package:flutter/material.dart';


class newSend extends StatefulWidget {
  const newSend({Key? key}) : super(key: key);

  @override
  State<newSend> createState() => _newSendState();
}

class _newSendState extends State<newSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child:  Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 30.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text('Envio: ',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top:20.0, bottom: 30.0),
                child: Row(
                  children: [
                    Text('Fecha: '),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Text('Selección de empresas: ',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.only(top:20.0,bottom: 30.0),
                  child: table(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 800.0,right: 30.0),
                      child: ElevatedButton(
                        child: const Text('Crear envio'),
                        onPressed: (){},
                      ),
                    ),
                    ElevatedButton(
                      child: const Text('Cancelar'),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}
