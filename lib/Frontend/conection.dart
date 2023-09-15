import 'package:flutter/material.dart';

class conection extends StatefulWidget {
  const conection({Key? key}) : super(key: key);

  @override
  State<conection> createState() => _conectionState();
}

class _conectionState extends State<conection> {
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child:  Padding(
          padding: const EdgeInsets.only(left: 30.0,top: 30.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text('Conexion base de datos: ',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top:20.0, bottom: 30.0,left: 20.0),
                child: Row(
                  children: [
                     Text('Ip: '),
                     SizedBox(
                      width: 170,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),

                      ),
                    ),
                     Padding(
                       padding: EdgeInsets.only(left: 170.0),
                       child: Text('Port: '),
                     ),
                     SizedBox(
                      width: 100,
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
              const Padding(
                padding: EdgeInsets.only(top:20.0, bottom: 30.0,left: 20.0),
                child: Row(
                  children: [
                    Text('Base de datos: '),
                    SizedBox(
                      width: 170,
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
              const Padding(
                padding: EdgeInsets.only(top:20.0, bottom: 30.0,left: 20.0),
                child: Row(
                  children: [
                    Text('Usuario: '),
                    SizedBox(
                      width: 170,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 170.0),
                      child: Text('Contraseña: '),
                    ),
                    SizedBox(
                      width: 170,
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 600.0,right: 30.0,top:40.0),
                    child: ElevatedButton(
                      child: const Text('Conectar'),
                      onPressed: (){},
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}