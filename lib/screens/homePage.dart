// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:surpriseme_app/screens/widgets/destinationCarousel.dart';
import 'package:surpriseme_app/screens/widgets/hotelCarousel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  // ignore: prefer_final_fields
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        // ignore: avoid_print
        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondary
              : Colors.blue[100],
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Colors.blue[800],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text('What would you like to find ?',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildIcon(map.key),
                    )
                    .toList(),
              ),
              SizedBox(height: 20.0),
              DestinationCarousel(),
              SizedBox(height: 20.0),
              HotelCarousel(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage(''),
            ),
          ),
        ],
      ),
    );
  }
}
