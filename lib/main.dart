
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_example/Screen/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(path: '/', name: 'home', builder: (context, _) => const HomeWidget()),
          GoRoute(path: '/new', name: 'new', builder: (context, _) => const NewPage()),
          GoRoute(path: '/new1', name: 'new1', builder: (context, _) => const NewPage2()),
        ]
      ) ,
      //앱
      // home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Study to Container'),
        // ),
        // body: HomeWidget(),
      // ),
    ),
  );
}

// class CustomContainer extends StatelessWidget {
//   const CustomContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: double.infinity,
//         height: 300,
//         padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
//         decoration: BoxDecoration(
//           color: Colors.orange,
//           border:
//               Border.all(color: Colors.red, width: 5, style: BorderStyle.solid),
//           borderRadius: BorderRadius.circular(100),
//           boxShadow: [
//             BoxShadow(color: Colors.pink.withOpacity(0.3), offset: Offset(6, 6), blurRadius: 10, spreadRadius: 10),
//             BoxShadow(color: Colors.pinkAccent.withOpacity(0.3), offset: Offset(-6, -6), blurRadius: 10, spreadRadius: 10)
//           ]
//         ),
//         child: Center(
//             child: Container(
//                 color: Colors.yellow, child: Text('Hello Container'))),
//       ),
//     );
//   }
// }

// class body extends StatelessWidget {
//   const body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // return Placeholder( //이 위치에 어떤 위젯이 올거니까 그 사이즈 만큼 자리를 차지해라
//     //
//     //   child: Text('Place holder'),
//     // );
//
//     return Container(
//       // height: 300,
//       // width: double.infinity,
//       // color: Colors.grey,
//
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row( // Column -> 상하로 배치 // Row -> 좌우로 배치
//             // mainAxisSize: MainAxisSize.min, //컬럼의 최대 높이를 min 으로
//             mainAxisAlignment: MainAxisAlignment.center, //컬럼 가운데로
//             crossAxisAlignment: CrossAxisAlignment.center,
//             // crossAxisAlignment: CrossAxisAlignment.start, //컬럼 맨 앞으로
//
//             children: [
//               Container(
//                 width: 100,
//                 height: 80,
//                 color: Colors.red,
//                 child: Text('Container 1'),
//               ),
//               Container(
//                 width: 100,
//                 height: 80,
//                 color: Colors.blue,
//                 child: Text('Container 2'),
//               ),
//               Container(
//                 width: 100,
//                 height: 80,
//                 color: Colors.green,
//                 child: Text('Container 3'),
//               ),
//             ],
//           ),
//           Container(
//             width: 300,
//             height: 120,
//             color: Colors.grey,
//             child: Text('Container 4'),
//           )
//         ],
//       ),
//     );
//   }
// }

// class body extends StatelessWidget {
//   const body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // return Placeholder( //이 위치에 어떤 위젯이 올거니까 그 사이즈 만큼 자리를 차지해라
//     //
//     //   child: Text('Place holder'),
//     // );
//
//     return Stack(
//       children: [
//         Container(
//           width: 500,
//           height: 500,
//           color: Colors.black,
//         ),
//         Container(
//           width: 400,
//           height: 400,
//           color: Colors.red,
//         ),
//         Container(
//           width: 300,
//           height: 300,
//           color: Colors.blue,
//         ),
//         Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               width: 200,
//               height: 200,
//               color: Colors.green,
//             )),
//       ],
//     );
//   }
// }

// class HomeWidget extends StatelessWidget {
//   const HomeWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: ConstraintsWidget(),
//       ),
//     );
//   }
// }

// class ConstraintsWidget extends StatelessWidget {
//   const ConstraintsWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Flexible(
//             child: Container(
//                 child: Text(
//           'hhfffffffffffffffffffffffffffh',
//           style: TextStyle(fontSize: 30),
//         ))),
//         Container(
//             child: Text(
//           'hello world',
//           style: TextStyle(fontSize: 30),
//         )),
//       ],
//     );
//   }
// }

// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         TestCheckBox(),
//         TestRadioButton(),
//         TestSlider(),
//         TestSwitch(),
//         TestPopMenu(),
//       ],
//     );
//   }
// }
//
// class TestCheckBox extends StatefulWidget {
//   const TestCheckBox({super.key});
//
//   @override
//   State<TestCheckBox> createState() => _TestCheckBoxState();
// }
//
// class _TestCheckBoxState extends State<TestCheckBox> {
//   late List<bool> values;
//
//   @override
//   void initState() {
//     super.initState();
//     values = [false, false, false];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Checkbox(
//             value: values[0],
//             onChanged: (value) => changeValue(0, value: value)),
//         Checkbox(
//             value: values[1],
//             onChanged: (value) => changeValue(1, value: value)),
//         Checkbox(
//             value: values[2],
//             onChanged: (value) => changeValue(2, value: value)),
//       ],
//     );
//   }
//
//   void changeValue(int index, {bool? value = false}) {
//     setState(() {
//       values[index] = value!;
//     });
//   }
// }
//
// class TestRadioButton extends StatefulWidget {
//   const TestRadioButton({super.key});
//
//   @override
//   State<TestRadioButton> createState() => _TestRadioButtonState();
// }
//
// enum TestValue {
//   test1,
//   test2,
//   test3;
// }
//
// class _TestRadioButtonState extends State<TestRadioButton> {
//   TestValue? selectValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListTile(
//           leading: Radio<TestValue>(
//               value: TestValue.test1,
//               groupValue: selectValue,
//               onChanged: (value) => setState(() => selectValue = value!)
//           ),
//           title: Text(TestValue.test1.name),
//           onTap: () => setState(() {
//             if(selectValue != TestValue.test1){
//               selectValue = TestValue.test1;
//             }
//           }),
//         ),
//         Radio<TestValue>(
//             value: TestValue.test2,
//             groupValue: selectValue,
//             onChanged: (value) => setState(() => selectValue = value!)),
//         Radio<TestValue>(
//             value: TestValue.test3,
//             groupValue: selectValue,
//             onChanged: (value) => setState(() => selectValue = value!)),
//       ],
//     );
//   }
// }
//
// class TestSlider extends StatefulWidget {
//   const TestSlider({super.key});
//
//   @override
//   State<TestSlider> createState() => _TestSliderState();
// }
//
// class _TestSliderState extends State<TestSlider> {
//   double value = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Column(
//       children: [
//         Text('${value.round()}'),
//         Slider(
//           value: value,
//           onChanged: (newValue) => setState(() => value = newValue),
//           divisions: 100,
//           max: 100,
//           min: 0,
//           label: value.round().toString(),
//         ),
//       ],
//     );
//   }
// }
//
// class TestSwitch extends StatefulWidget {
//   const TestSwitch({super.key});
//
//   @override
//   State<TestSwitch> createState() => _TestSwitchState();
// }
//
// class _TestSwitchState extends State<TestSwitch> {
//
//   bool value = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Switch(value: value, onChanged: (newValue) => setState(() => value =  newValue)),
//         CupertinoSwitch(value: value, onChanged: (newValue) => setState(() => value =  newValue))
//       ],
//     );
//   }
// }
//
// class TestPopMenu extends StatefulWidget {
//   const TestPopMenu({super.key});
//
//   @override
//   State<TestPopMenu> createState() => _TestPopMenuState();
// }
//
// class _TestPopMenuState extends State<TestPopMenu> {
//   TestValue selectValue = TestValue.test1;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(selectValue.name),
//         PopupMenuButton(itemBuilder: (context) {
//           return TestValue.values
//               .map((value) => PopupMenuItem(value: value, child: Text(value.name)))
//               .toList();
//         },
//         onSelected: (newValue) => setState(() => selectValue = newValue),
//         ),
//       ],
//     );
//   }
// }

// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return TestWidget();
//   }
// }
//
// class TestWidget extends StatefulWidget {
//   const TestWidget({super.key});
//
//   @override
//   State<TestWidget> createState() => _TestWidgetState();
// }
//
// class _TestWidgetState extends State<TestWidget> {
//   int value = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           'Count : $value',
//           style: const TextStyle(fontSize: 30),
//         ),
//         TestButton(addCounter),
//       ],
//     );
//   }
//
//   void addCounter() => setState(() => ++value);
// }
//
// class TestButton extends StatelessWidget {
//   const TestButton(this.callback, {super.key});
//
//   final VoidCallback callback;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       width: double.infinity,
//       child: InkWell(
//         onTap: () => callback.call(),
//         child: Center(
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
//                 decoration: BoxDecoration(border: Border.all()),
//                 child: Text(
//                   'Up Counter',
//                   style: TextStyle(fontSize: 24),
//                 ))),
//       ),
//     );
//   }
// }

//화면 이동하기
// class HomeWidget extends StatefulWidget {
//   const HomeWidget({super.key});
//
//   @override
//   State<HomeWidget> createState() => _HomeWidgetState();
// }
//
// class _HomeWidgetState extends State<HomeWidget> {
//   late int index;
//
//   @override
//   void initState() {
//     super.initState();
//     index = 0;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter에서 화면 이동하기'),
//       ),
//       body: homeBody(),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
//         ],
//         currentIndex: index,
//         onTap: (newIndex) => setState(() => index = newIndex),
//       ),
//     );
//   }
//
//   Widget homeBody() {
//     switch (index) {
//       case 1:
//         return const Center(
//             child: Icon(Icons.search, size: 100)
//         );
//       case 2:
//         return const Center(
//             child: Icon(Icons.person, size: 100)
//         );
//       case 0:
//       default:
//         return const Center(
//             child: Icon(Icons.home, size: 100)
//         );
//     }
//   }
//}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter에서 화면 이동하기'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            context.pushNamed('new');
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const NewPage(),
            //   ),
            // );
          },
        ),
      ),
    );
  }
}
