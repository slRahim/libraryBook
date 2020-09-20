import 'dart:convert';
import 'package:flutter_library_book/models/Author.dart';
import 'package:http/http.dart' as http;

class AuthorApi {

  static Future<List> getAuthors() async {

    try{
      final response = await http.get("https://jsonplaceholder.typicode.com/user");
      return json.decode(response.body);

    }catch(e){
      throw Exception('Failed to load authors');
    }
  }
}