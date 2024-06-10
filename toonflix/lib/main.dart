import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  // runApp 은 Widget을 사용하여 앱에 주입 가능
  // Widget 은 UI 기능을 담은 레고블록 같은 것
  // widget 은 programming 적으론 class
  runApp(App());
}

// 이 위젯이 루트가 된다.
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //앱의 스타일 MaterialApp : Android // CupertinoApp: IOS
      //scaffold :
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Flutter'),
        ),
        body: Center(
          child: Text('hello ,wordl'),
        ),
      ),
    );
  }
}
