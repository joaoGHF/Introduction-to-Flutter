import 'package:flutter/material.dart';
import 'package:physical_project/main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second page',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: const Color.fromRGBO(169, 215, 255, 1),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Into the Second Page...',
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 90, 1),
                fontSize: 22,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
                child: Text('Toggle to MyApp Page'))
          ],
        ),
      ),
    );
  }
}
