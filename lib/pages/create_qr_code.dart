import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CreateQRCode extends StatefulWidget {
  const CreateQRCode({Key? key}) : super(key: key);

  @override
  _CreateQRCodeState createState() => _CreateQRCodeState();
}

class _CreateQRCodeState extends State<CreateQRCode> {
  TextEditingController qrTextController = TextEditingController();
  String? dummyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create QR Code"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          dummyData == null
              ? Center(
                  child: Text("Enter some text"),
                )
              : Expanded(
                  child: QrImage(
                    data: dummyData!,
                  ),
                ),
          ListTile(
            leading: Icon(Icons.edit),
            trailing: ElevatedButton(
              child: Text(
                "ENTER",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  dummyData = qrTextController.text == ""
                      ? null
                      : qrTextController.text;
                });
              },
            ),
            title: TextField(
              controller: qrTextController,
            ),
          ),
        ],
      ),
    );
  }
}
