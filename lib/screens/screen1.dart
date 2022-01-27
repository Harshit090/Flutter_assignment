import 'package:behance/screens/centercollumn.dart';
import 'package:behance/widget/maindrawer.dart';
import 'package:flutter/material.dart';

class Screen_One extends StatelessWidget {
  static const routeName = '/screen1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                    textStyle: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('Be'),
                ),
              ),
            ),
            ElevatedButton(
                child: const Text(
                  'Use App',
                  style: TextStyle(fontSize: 18),
                ),
                style: ButtonStyle(
                  // padding:
                  //     MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 0, 87, 255)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () => null),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: CenterColumn(),
      ),
    );
  }
}
