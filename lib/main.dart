

import 'package:flutter/material.dart';
import 'package:http/http.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final url="https://rathi.com/TradeMobiServices_V3/api/GetToken/TokenKey";
  
  void postData()  async{
    try {
       final response = await post(Uri.parse(url), body: {
         "ClientID":"HOIBA193",
         "BusinessID":"Rupeeseed"
      });

      print(response.body);
    } catch(er){}
  }
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: postData,
            child: Text("Send post"),
          ),
        )
      ),
    );
  }
}

