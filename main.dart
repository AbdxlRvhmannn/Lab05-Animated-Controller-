import 'package:flutter/material.dart';
import 'animated_controller_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Explicit Animation')),
        body: AnimatedControllerWidget(),
      ),
    );
  }
}



























// import 'AbdulRehman.dart';
// import 'pp_01.dart';
// import 'animated_container_widget.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Animated Container ')),
//         body: AnimatedContainerWidget(),
//       ),
//     );
//   }
// }

