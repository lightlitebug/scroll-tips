import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:scroll_ex/models/post.dart';

class JsonPlaceholder {
  static Future<List<Post>> getPosts() async {
    try {
      final http.Response response =
          await http.get('https://jsonplaceholder.typicode.com/posts');

      final responseBody = json.decode(response.body);

      final List<Post> posts =
          responseBody.map<Post>((json) => Post.fromJson(json)).toList();

      return posts;
    } catch (err) {
      print(err);
      throw err;
    }
  }
}
