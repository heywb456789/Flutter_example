import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // int counter = 0;

  // List<int> numbers = [];

  // void onClicked() {
  //   // counter = counter + 1; // 여기 있어도 State 변경된다.
  //   setState(() {
  //     // 변경된 이벤트에 대해서 반응하여 Re-Render
  //     counter = counter + 1; //recommended
  //     numbers.add(numbers.length);
  //   });
  // }
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              showTitle ? const MyLargeTitle() : const Text('nothingTosee'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_circle_outline_sharp),
              )
              // Text(
              //   '$counter',
              //   style: const TextStyle(fontSize: 20),
              // ),
              // for (var n in numbers) Text('$n'),
              // IconButton(
              //   iconSize: 40,
              //   onPressed: onClicked,
              //   icon: const Icon(Icons.add_box_rounded),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  // 상속을 받는 경우에 상속받는 값을 초기화 할때
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hello"); //build Print 보다 먼저 출력
  }

  //위젯에서 제거 되는 시점
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("helloss");
    //context 는 Mylarge 위의 모든 요소들의 모든 정보
    // 이를 통해 상위 요소의 정보에 접근 가능
    return Text(
      "My Large Title",
      style: TextStyle(
        fontSize: 20,
        //widget tree 에 속하는 모든 정보
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
//LifeCycle
