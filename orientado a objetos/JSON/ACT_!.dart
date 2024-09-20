import 'package:http/http.dart' as http;
import 'dart:convert';

class User{
  int? userld;
  int? id;
  String? title;
  String? body;
  
  User(String m){
    Map<String, dynamic> map = jsonDecode(m);
    this.userld = map[];
    this.id = map;
    this.title = map;
    this.body = map;
    
  }
}

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}