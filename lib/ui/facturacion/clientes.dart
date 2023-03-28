import 'package:flutter/material.dart';
import 'package:gestionclientes_getx/domain/controller/gestionCliente.dart';
import 'package:get/get.dart';

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController clientec = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clientes'),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: clientec.listapublica.length,
        itemBuilder: (context, index) {
          final cliente = clientec.listapublica[index];
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.network(cliente.foto),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      cliente.foto,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 10),
                  Text(
                    cliente.nombre,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 5),
                  Text(
                    cliente.apellido.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Georgia',
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 5),
                  Text(
                    'Edad: ${cliente.edad}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                  ),
                ],


                // children: [
                //   //Image.network(cliente.foto),
                //   ClipRRect(
                //     borderRadius: BorderRadius.circular(50),
                //     child: Image.network(
                //       cliente.foto,
                //       width: 100,
                //       height: 100,
                //       fit: BoxFit.cover,
                //     ),
                //   ),

                //   Text(cliente.nombre),
                //   Text(cliente.apellido),
                //   Text('Edad: ${cliente.edad}'),
                // ],
              ),
            ),
          );
        },
      ),
    );
  }
}
