import 'package:http/http.dart' as http;
import 'dart:convert';

class User{
  int? userld;
  int? id;
  String? title;
  String? body;
  
  User(String m){
    Map<String, dynamic> map = jsonDecode(m);
    this.userld = map['userld'];
    this.id = map['id'];
    this.title = map['title'];
    this.body = map['body'];
    
  }

}
void main(){
String code = '{"userld": "pepe", "id": 45, "title": "colaborador","body": "dart"}';
  User 1m = User(code);
  print(1m.userld);
  print(1m.id);
  print(m1.title)
  print(1m.body)
}

void main() async {
  var url = Uri.https('jsonplaceholder.typicode.com', '/posts/1');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');
}