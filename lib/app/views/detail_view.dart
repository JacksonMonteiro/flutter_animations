import 'package:animations/app/components/heart.dart';
import 'package:animations/app/models/trip.dart';
import 'package:flutter/material.dart';
import 'package:ipsum/ipsum.dart';


class DetailView extends StatelessWidget {

  final Trip trip;
  DetailView({ required this.trip });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                child: Image.asset(
                  'assets/${trip.img}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                )
              ),
              SizedBox(height: 30),
              ListTile(
                title: Text(
                  trip.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[800]
                  )
                ),
                subtitle: Text(
                  '${trip.nights} night stay for only \$${trip.price}',
                  style: TextStyle(letterSpacing: 1)
                ),
                trailing: Heart()
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  Ipsum().paragraphs(1),
                  style: TextStyle(
                    color: Colors.grey[600],
                    height: 1.4
                  )
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}