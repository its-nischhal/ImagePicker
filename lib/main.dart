import 'package:flutter/material.dart';
import 'package:photo_gallary/screens/fromCamera.dart';
import 'package:photo_gallary/screens/from_gallary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Photo Display App'),),
          body : const MyGallary()
      )
    );
  }
}
class MyGallary extends StatelessWidget {
  const MyGallary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return FromCamera();}));
            }, child: const Text("Camera"),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return FromGallary();}));
            }, child: const Text('Gallary')),
          )
          ],
      ),
    );
  }
}

