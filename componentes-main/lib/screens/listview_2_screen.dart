import 'package:flutter/material.dart';

class ListviewSeparatedScreen extends StatelessWidget {
  final peliculas = const [
    'Spiderman',
    'Aquaman',
    'Batman',
    'Shazam',
    'Ironman',
  ];
  const ListviewSeparatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Separated Screen'),
        elevation: 5,
        /*backgroundColor: Colors.deepPurple,*/
      ),
      body: ListView.separated(
        itemCount: peliculas.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.movie),
          title: Text(peliculas[index]),
          textColor: Color.fromARGB(255, 21, 110, 110),
          trailing:
              const Icon(Icons.keyboard_arrow_right, color: Color.fromARGB(255, 3, 61, 22)),
          onTap: () {
            final pelicula = peliculas[index];
            print(pelicula);
          },
          /*textColor: Colors.deepPurple,*/
          iconColor: Color.fromARGB(255, 3, 61, 22),
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
      backgroundColor: Colors.black,
    );
  }
}
