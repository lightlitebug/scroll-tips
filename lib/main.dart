import 'package:flutter/material.dart';

import 'package:scroll_ex/pages/keyboard_avoiding.dart';
import 'package:scroll_ex/pages/listview_only.dart';
import 'package:scroll_ex/pages/primary_scroll.dart';
import 'package:scroll_ex/pages/shrink_wrap.dart';
import 'package:scroll_ex/pages/using_expanded.dart';
import 'package:scroll_ex/pages/using_sliver_list.dart';
import 'package:scroll_ex/widgets/my_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scroll Tips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scroll Tips'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MyButton(
              btnTitle: 'Using Expanded',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UsingExpanded();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            MyButton(
              btnTitle: 'Using ListView only',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ListViewOnly();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            MyButton(
              btnTitle: 'Primary Scroll',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PrimaryScroll();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            MyButton(
              btnTitle: 'SliverList',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return UsingSliverList();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            MyButton(
              btnTitle: 'shrinkWrap?',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ShrikWrapEx();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            MyButton(
              btnTitle: 'Keyboard avoiding',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return KeyboardAvoiding();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
