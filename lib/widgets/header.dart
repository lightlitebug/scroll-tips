import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50.0,
          width: double.infinity,
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '2019 생산량',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '쌀',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Chip(
                    label: Text('300톤'),
                    backgroundColor: Colors.grey[300],
                  ),
                ],
              ),
              Divider(color: Colors.black45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '보리',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Chip(
                    label: Text('100톤'),
                    backgroundColor: Colors.grey[300],
                  ),
                ],
              ),
              Divider(color: Colors.black45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '풀사료',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  Chip(
                    label: Text('500톤'),
                    backgroundColor: Colors.grey[300],
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(color: Colors.black45),
      ],
    );
  }
}
