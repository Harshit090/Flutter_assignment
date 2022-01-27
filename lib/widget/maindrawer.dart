import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget DrawerText(String titleName) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      alignment: Alignment.centerLeft,
      child: Text(
        titleName,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 29,
          ),
          Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const IconButton(
                  iconSize: 26,
                  icon: Icon(Icons.clear_outlined),
                  onPressed: null,
                ),
                ElevatedButton(
                  child: const Text(
                    'Use App',
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () => null,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          DrawerText('Discover'),
          DrawerText('Livestreams'),
          DrawerText('Jobs'),
          const SizedBox(
            height: 20,
          ),
          const Text('Download from apple store'),
          const Text('Download from google play'),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            child: DropdownButton(
              items: ['A', 'B', 'C', 'D'].map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(
                    value,
                  ),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 0, 87, 255)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () => null,
            ),
          ),
        ],
      ),
    );
  }
}
