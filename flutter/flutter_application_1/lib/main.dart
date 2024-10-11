import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'pag/halo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo',
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
    setState(() {
      isLoading = true; 
    });

    var url = Uri.https('jsonplaceholder.typicode.com', '/users/2');
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        Map<String, dynamic> map = jsonDecode(response.body);
        user = User(map); 

        setState(() {
          isLoading = false;
        });
      } else {
        throw Exception('Error al cargar los datos');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isLoading)
              Center(child: CircularProgressIndicator()),

            
            if (!isLoading) 
              Psv(user: user),
              
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSearch,
              child: Text('Buscar'),
            ),
          ],
        ),
      ),
    );
  }
}