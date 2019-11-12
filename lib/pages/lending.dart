import 'package:flutter/material.dart';

class LendingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200,
        height: 340,
        margin: EdgeInsets.only(top: 200, left: 80, right: 80),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: const Alignment(0.0, -1.0),
                end: const Alignment(0.0, 1.0),
                colors: <Color>[
                  const Color(0xffef5350),
                  const Color(0x00ef5350)
                ]),
            // borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xcc000000),
                  offset: Offset(0, 2),
                  blurRadius: 4),
              BoxShadow(
                  color: const Color(0x80000000),
                  offset: Offset(0, 6),
                  blurRadius: 20)
            ],
            shape: BoxShape.circle),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Transform(
                alignment: Alignment.topLeft,
                transform: Matrix4.identity()
                  ..rotateZ(60 * 3.1415926 / 180)
                  ..scale(1.2),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Georgia',
                        letterSpacing: 4,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Lorem ipsum dolor sit amet, consec etur',
                        ),
                        TextSpan(
                            text: 'ipsum',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 12))
                      ]),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Column(
                children: <Widget>[
                  Text(
                    'This is my Flutter App Demo.I\’m a new flutter dev.But I like it very mach.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 15),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text('立即登录'),
                      textColor: Colors.blue,
                      onPressed: () async {
                        var result = await Navigator.pushNamed(context, 'login', arguments: '我是命名路由的传入参数');
                        print('路由返回值: $result');
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
