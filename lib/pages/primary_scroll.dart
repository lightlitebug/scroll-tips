import 'package:flutter/material.dart';
import 'package:scroll_ex/models/post.dart';
import 'package:scroll_ex/service/json_placehodler.dart';
import 'package:scroll_ex/widgets/header.dart';

class PrimaryScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primary Scroll'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            FutureBuilder(
              future: JsonPlaceholder.getPosts(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error}',
                        style: TextStyle(color: Colors.red),
                      ),
                    );
                  }

                  return ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = snapshot.data[index];

                      return Column(
                        children: <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              child: Text((index + 1).toString()),
                            ),
                            title: Text(item.title),
                            subtitle: Text(item.body),
                          ),
                          Divider(color: Colors.black38),
                        ],
                      );
                    },
                  );
                } else {
                  return SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
