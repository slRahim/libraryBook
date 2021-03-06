import 'dart:convert';
import 'package:flutter_library_book/models/Author.dart';
import 'package:http/http.dart' as http;

class AuthorApi {

  static Future<List<Author>> getAuthors() async {

    try{
      final response = await http.get("https://jsonplaceholder.typicode.com/users");

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        return jsonResponse.map((author) => new Author.fromJson(author)).toList();
      } else {
        throw Exception('Failed to load authors from API');
      }

    }catch(e){
      throw Exception('Failed to load authors');
    }
  }

}