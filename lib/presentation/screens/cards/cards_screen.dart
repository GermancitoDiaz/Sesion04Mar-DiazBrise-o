import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Screen')),

      body: const _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: const [
        Card(
          child: ListTile(
            leading: Icon(Icons.photo),
            title: Text('Card básica'),
            subtitle: Text('Esta es una card simple'),
          ),
        ),
        SizedBox(height: 10),

        Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Card con padding y elevación',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(height: 10),

        Card(
          color: Colors.indigoAccent,
          child: ListTile(
            leading: Icon(Icons.star, color: Colors.white),
            title: Text(
              'Card con color',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Ejemplo de card personalizada',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        SizedBox(height: 10),

        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Card con bordes redondeados',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(height: 10),

        Card(
          child: Column(
            children: [
              Image(image: NetworkImage('https://picsum.photos/400/200')),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text('Card con imagen'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
