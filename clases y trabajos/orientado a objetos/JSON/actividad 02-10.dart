import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  String? website;
  String? phone;
  Company? company;
  Address? address;

  User(Map c) {
    this.id = c['id'];
    this.name = c['name'];
    this.username = c['username'];  
    this.email = c['email'];
    this.website = c['website'];
    this.phone = c['phone'];
    Map company = c['company'];
    this.company = Company(company);
    Map address = c['address'];
    this.address = Address(address);

  }
} 

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map c){
    this.name = c['name'];
    this.catchPhrase = c['catchPhrase'];
    this.bs = c['bs'];
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map c){
    
    this.street = c['street'];
    this.suite = c['suite'];
    this.city = c['city'];
    this.zipcode = c['zipcode'];
    this.geo =  Geo(c['geo']);

  }

}

class Geo {
  String? lat;
  String? lng;

  Geo(Map c){
    
    this.lat = c['lat'];
    this. lng = c['lng'];
  }
}

void main() async{
  var url = Uri.https('jsonplaceholder.typicode.com',  '/users/2');
  print("espere.....");
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  Map<String, dynamic> map = jsonDecode(response.body);
  User us = User(map);
  print(us);
}







