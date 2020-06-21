import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://miro.medium.com/max/800/1*in7MRIAKfRn-qDgJKc9XVw.jpeg'),
              ),
              Text(
                'Lincoln Arrais',
                style: TextStyle(
                  fontFamily: 'OdibeeSans',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  color: Colors.white,
                ),
              ),
              Text(
                'DESENVOLVEDOR FLUTTER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              InfoCard(
                icon: Icons.phone,
                title: '+55 88 123 456 789',
              ),
              InfoCard(
                icon: Icons.email,
                title: 'lincoln@email.com',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const InfoCard({
    @required this.icon,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'SourceSansPro',
            color: Colors.teal.shade900,
          ),
        ),
      ),
    );
  }
}
