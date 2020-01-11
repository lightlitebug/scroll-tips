import 'package:flutter/material.dart';

class ShrikWrapEx extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'key': 'item 1', 'value': 'description 1'},
    {'key': 'item 2', 'value': 'description 2'},
    {'key': 'item 3', 'value': 'description 3'},
    {'key': 'item 4', 'value': 'description 4'},
    {'key': 'item 5', 'value': 'description 5'},
    {'key': 'item 6', 'value': 'description 6'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shrinkWrap'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, idx) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(idx.toString()),
                  ),
                  title: Text(items[idx]['key']),
                  subtitle: Text(items[idx]['value']),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
