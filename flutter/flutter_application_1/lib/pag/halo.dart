import 'package:flutter/material.dart';

class Psv extends StatelessWidget {
  final User? user;

  const Psv({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Title(color: Colors.blue, child: Text('USER')),
        Text('ID: ${user?.id ?? 'N/A'}'),
        Text('Name: ${user?.name ?? 'N/A'}'),
        Text('Username: ${user?.username ?? 'N/A'}'),
        Text('Email: ${user?.email ?? 'N/A'}'),
        Text('Phone: ${user?.phone ?? 'N/A'}'),
        SizedBox(height: 20),
        Title(color: Colors.blue, child: Text('ADDRESS')),
        Text('Street: ${user?.address?.street ?? 'N/A'}'),
        Text('Suite: ${user?.address?.suite ?? 'N/A'}'),
        Text('City: ${user?.address?.city ?? 'N/A'}'),
        Text('Zipcode: ${user?.address?.zipcode ?? 'N/A'}'),
        SizedBox(height: 20),
        Title(color: Colors.blue, child: Text('GEO')),
        Text('Lat: ${user?.address?.geo?.lat ?? 'N/A'}'),
        Text('Lng: ${user?.address?.geo?.lng ?? 'N/A'}'),
        SizedBox(height: 20),
        Title(color: Colors.blue, child: Text('COMPANY')),
        Text('Name: ${user?.company?.name ?? 'N/A'}'),
        Text('CatchPhrase: ${user?.company?.catchPhrase ?? 'N/A'}'),
        Text('Bs: ${user?.company?.bs ?? 'N/A'}'),
      ],
    );
  }
}


class User {
  int? id;
  String? name;
  String? username;
  String? email;
  String? phone;
  Company? company;
  Address? address;

  User(Map c) {
    this.id = c['id'];
    this.name = c['name'];
    this.username = c['username'];
    this.email = c['email'];
    this.phone = c['phone'];
    this.company = Company(c['company']);
    this.address = Address(c['address']);
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map c) {
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

  Address(Map c) {
    this.street = c['street'];
    this.suite = c['suite'];
    this.city = c['city'];
    this.zipcode = c['zipcode'];
    this.geo = Geo(c['geo']);
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map c) {
    this.lat = c['lat'];
    this.lng = c['lng'];
  }
}