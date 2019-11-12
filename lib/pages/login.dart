import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key, @required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账号登录'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(text),
            RaisedButton(
              child: Text('返回'),
              onPressed: () {
                Navigator.pop(context, '我是返回值');
              },
            )
          ],
        ),
      ),
    );
  }
}
