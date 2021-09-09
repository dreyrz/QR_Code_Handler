import 'package:flutter/material.dart';

import 'create_qr_code.dart';

import 'read_qr_code.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text("Create a QR Code"),
            leading: Icon(Icons.qr_code),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateQRCode()),
            ),
          ),
          ListTile(
            title: Text("Read a QR Code"),
            leading: Icon(Icons.qr_code_scanner),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReadQRCode()),
            ),
          ),
        ],
      ),
    );
  }
}
