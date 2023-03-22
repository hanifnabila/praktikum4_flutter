import 'package:flutter/material.dart';
import 'package:layout/detail_screen.dart';
import 'package:layout/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: <Widget> [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Image.asset(place.imageAsset),
                  Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        place.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Lobster',
                        ),
                      )
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget> [
                            Icon(Icons.calendar_today),
                            Text(
                              place.openingDays,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Oxygen',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget> [
                            Icon(Icons.access_time),
                            Text(place.openingHours),
                          ],
                        ),
                        Column(
                          children: <Widget> [
                            Icon(Icons.attach_money),
                            Text(place.ticketPrice),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        place.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Oxygen',
                        ),
                      )
                  ),
                  SizedBox(
                    height: 150,
                    child:  ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ...place.gallery.map((e) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              child: Image.asset(e, fit: BoxFit.cover,),
                              width: 200,
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}