import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:toonflix/widgets/buttond.dart';
import 'package:toonflix/widgets/currenyCard.dart';

void main() {
  // runApp 은 Widget을 사용하여 앱에 주입 가능
  // Widget 은 UI 기능을 담은 레고블록 같은 것
  // widget 은 programming 적으론 class
  runApp(const App());
}

// 이 위젯이 루트가 된다.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //앱의 스타일 MaterialApp : Android // CupertinoApp: IOS
      //scaffold :
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey Selina',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  )),
              const SizedBox(
                height: 5,
              ),
              const Text('\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: 'Transfer',
                    backgroundColor: Colors.amber,
                    textColor: Colors.black,
                  ),
                  Button(
                    text: 'Transfer',
                    backgroundColor: Color(0xFF1F2123),
                    textColor: Colors.white,
                  ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.amber,
                  //     borderRadius: BorderRadius.circular(45),
                  //   ),
                  //   child: const Padding(
                  //     padding: EdgeInsets.symmetric(
                  //       vertical: 20,
                  //       horizontal: 50,
                  //     ),
                  //     child: Text(
                  //       'Transfer',
                  //       style: TextStyle(fontSize: 22),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xFF1F2123),
                  //     borderRadius: BorderRadius.circular(45),
                  //   ),
                  //   child: const Padding(
                  //     padding: EdgeInsets.symmetric(
                  //       vertical: 20,
                  //       horizontal: 50,
                  //     ),
                  //     child: Text(
                  //       'Request',
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Container(
              //   clipBehavior: Clip.hardEdge, // 이미지 오버플로우 허용 및 오버플로우 이미지 제거
              //   decoration: BoxDecoration(
              //     color: const Color(0xFF1F2123),
              //     borderRadius: BorderRadius.circular(30),
              //   ),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 20,
              //       horizontal: 10,
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const Text(
              //               'Euro',
              //               style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 32,
              //                   fontWeight: FontWeight.w600),
              //             ),
              //             const SizedBox(
              //               height: 10,
              //             ),
              //             Row(
              //               children: [
              //                 const Text(
              //                   '6428',
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 20,
              //                   ),
              //                 ),
              //                 const SizedBox(
              //                   width: 5,
              //                 ),
              //                 Text(
              //                   'EUR',
              //                   style: TextStyle(
              //                     color: Colors.white.withOpacity(0.8),
              //                     fontSize: 20,
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ],
              //         ),
              //         Transform.scale(
              //           scale: 2.2,
              //           child: Transform.translate(
              //             offset: const Offset(-10, 10),
              //             child: const Icon(
              //               Icons.euro_rounded,
              //               color: Colors.white,
              //               size: 70,
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              const Currenycard(
                name: 'Euro',
                code: "EUR",
                amount: '6 428',
                icon: Icons.euro_rounded,
                isInverted: false,
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: const Currenycard(
                  name: 'Bitcoin',
                  code: "BTC",
                  amount: '6 428',
                  icon: Icons.currency_bitcoin,
                  isInverted: true,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -20),
                child: const Currenycard(
                  name: 'Dollar',
                  code: "USD",
                  amount: '428',
                  icon: Icons.attach_money_outlined,
                  isInverted: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
