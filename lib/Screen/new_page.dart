import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to new Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () {
                // Navigator.pop(context);
                context.pop();
              },
            ),
            TextButton(
              child: const Text('Go to New Page2'),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage2()) );
                context.pushNamed('new1');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to new Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              child: const Text('Go to Back'),
              onPressed: () {
                // Navigator.pop(context);
                context.pop();
              },
            ),
            TextButton(
              child: const Text('Go to Home'),
              onPressed: () {
                // Navigator.popUntil(context, (route) => route.isFirst);
                context.goNamed('home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
