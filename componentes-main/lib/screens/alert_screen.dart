
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});



  void displayDialogIOS( BuildContext context ){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('data'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:const [
              Text('texto en la alerta AIOS'),
              SizedBox(height:10),
              FlutterLogo(size:100)
            ],
          ),
          actions:[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok', 
              style: TextStyle(color: Colors.red),
              ),
            )
          ]
        );
      },
      );
  }
  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
            elevation: 5,
            backgroundColor: Color.fromARGB(255, 222, 102, 4),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('alerta de android', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),
                
                
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
              
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(color: Color.fromARGB(223, 13, 12, 12)),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'ok', style: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                ),
              ),
            ]);
      },
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Alert Screen")),
        body: Center(
          child: ElevatedButton(
            // style: ElevatedButton.styleFrom(
            //   primary: Colors.amber,
            //   shape: const StadiumBorder(),
            // ),

            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
            ),
            // onPressed: () => displayDialogIOS(context),
            onPressed: () => !Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
  
}   
