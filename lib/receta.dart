import 'package:flutter/material.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Strawberry Pavlova"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star_border),
                      SizedBox(width: 8),
                      Text('170 Reviews'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(height: 8),
                          Text('PREP:'),
                          Text('25 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.restaurant),
                          SizedBox(height: 8),
                          Text('COOK:'),
                          Text('1 hr'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.people),
                          SizedBox(height: 8),
                          Text('FEEDS:'),
                          Text('4-6'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/foto.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
