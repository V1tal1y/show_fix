import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyCounter());

class MyCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCounterEdit();
  }
}

class _MyCounterEdit extends State<MyCounter> {
  int count;

  @override
  void initState() {
    count = 50;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          title: Text(
            'Погода',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[700],
          brightness: Brightness.light,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: SafeArea(
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            _cityName(),
            _cityDetail(),
            _temperatureDetail(),
            _extraDetail(),
            _forecast(),
            _listBuilder(),
          ],
        ),
      ),
    ),
  );
}

TextField _cityName() {
  return TextField(
    style: TextStyle(
      color: Colors.white,
      fontSize: 18,
    ),
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Введите город',
        hintStyle: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        icon: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {})),
  );
}

Container _cityDetail() {
  return Container(
    padding: EdgeInsets.only(
      top: 30,
      bottom: 50,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Черкассы, ЮА',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Пятница, 26 Октября',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}

Row _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 90,
      ),
      SizedBox(
        width: 15,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '15° C',
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            'Солнечно',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      )
    ],
  );
}

Container _extraDetail() {
  return Container(
    padding: EdgeInsets.only(
      top: 40,
      bottom: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(
              Icons.wb_cloudy,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '5',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Text(
              'км/г',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.wb_cloudy,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '5',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Text(
              'км/г',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
              Icons.wb_cloudy,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '5',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Padding _forecast() {
  return Padding(
    padding: EdgeInsets.only(
      top: 30,
    ),
    child: Text(
      'Погода на остальные дни',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}

Container _listBuilder() {
  // final items = <String>[
  //   'Monday',
  //   'Tuesday',
  //   'Wednesday',
  //   'Thursday',
  //   'Friday',
  //   'Saturday',
  //   'Sunday'
  // ];

  return Container(
    child: ListView(
      children: <Widget>[
        ListTile(
          title: Text(
            'Понедельник',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Понедельник',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Понедельник',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Понедельник',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Понедельник',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Понедельник',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
        ),
      ],
    ),
  );
}
