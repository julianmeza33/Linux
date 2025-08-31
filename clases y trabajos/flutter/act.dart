import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Info',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;
  User? user;

  Future<void> _handleSearch() async {
    setState(() => isLoading = true);
    var url = Uri.https('jsonplaceholder.typicode.com', '/users/2');

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        user = User.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Error al cargar los datos');
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Info')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLoading) Center(child: CircularProgressIndicator()),
            if (!isLoading && user != null) UserInfo(user: user!),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _handleSearch, child: Text('Buscar')),
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final User user;

  const UserInfo({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('USER', style: TextStyle(color: Colors.blue)),
        Text('ID: ${user.id}'),
        Text('Name: ${user.name}'),
        Text('Username: ${user.username}'),
        Text('Email: ${user.email}'),
        Text('Phone: ${user.phone}'),
        SizedBox(height: 20),
        Text('ADDRESS', style: TextStyle(color: Colors.blue)),
        Text('Street: ${user.address.street}'),
        Text('Suite: ${user.address.suite}'),
        Text('City: ${user.address.city}'),
        Text('Zipcode: ${user.address.zipcode}'),
        SizedBox(height: 20),
        Text('GEO', style: TextStyle(color: Colors.blue)),
        Text('Lat: ${user.address.geo.lat}'),
        Text('Lng: ${user.address.geo.lng}'),
        SizedBox(height: 20),
        Text('COMPANY', style: TextStyle(color: Colors.blue)),
        Text('Name: ${user.company.name}'),
        Text('CatchPhrase: ${user.company.catchPhrase}'),
        Text('Bs: ${user.company.bs}'),
      ],
    );
  }
}

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final Company company;
  final Address address;

  User({required this.id, required this.name, required this.username, required this.email, required this.phone, required this.company, required this.address});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      company: Company.fromJson(json['company']),
      address: Address.fromJson(json['address']),
    );
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'],
      catchPhrase: json['catchPhrase'],
      bs: json['bs'],
    );
  }
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address({required this.street, required this.suite, required this.city, required this.zipcode, required this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: Geo.fromJson(json['geo']),
    );
  }
}

class Geo {
  final String lat;
  final String lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}