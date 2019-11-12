import 'package:flutter/material.dart';
import 'package:learning/pages/lending.dart';
import 'package:learning/pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white
      ),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          String arguments = settings.arguments;
          String routename = settings.name;
          dynamic page;
          if (routename == 'login') {
            page = LoginPage(text: arguments);
          }

          return page;
        });
      },
      home: LendingPage(),
      debugShowCheckedModeBanner: false
    );
  }
}


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               '接下来会按照官网的教程添加一个列表，列表可以无限滚动加载',
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(fontSize: 30.0, color: Colors.grey),
//             ),
//             Container(
//               width: 300.0,
//               height: 200.0,
//               margin: EdgeInsets.only(top: 30.0),
//               decoration: BoxDecoration(
//                 border: new Border.all(
//                   width: 2.0,
//                   color: Colors.orange,
//                   style: BorderStyle.solid
//                 ),
//                 borderRadius: BorderRadius.all(const Radius.circular(20.0))
//               ),
//               child: ClipRect(
//                 child: new Image.network(
//                   'https://flutter.dev/assets/resources/diagram-layercake-73512ded89f7df8301f622c66178633f04f91187822daf1ddff0d54b2d2676dc.png',
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             Stack(
//               children: <Widget>[
//                 Container(
//                   width: 200.0,
//                   height: 200.0,
//                   margin: EdgeInsets.only(top: 20),
//                   color: Colors.orange,
//                 ),
//                 Positioned(
//                   width: 100,
//                   height: 80,
//                   top: 80,
//                   right: 0,
//                   child: Text('PositionedText'),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
