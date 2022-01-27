import 'package:flutter/material.dart';

class SigningSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, 7), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sign up to join the',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const Text(
            'conversation',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Add your feedback for Ahmed Behery\'',
            style: TextStyle(fontSize: 16),
          ),
          const Text(
            'project by signing in or signing up.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(
                child: const Text(
                  'Sign Up',
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
                onPressed: () => null,
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1),
                ),
                child: IconButton(
                  iconSize: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.offline_bolt_rounded),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1),
                ),
                child: IconButton(
                  iconSize: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(width: 1),
                ),
                child: IconButton(
                  iconSize: 20,
                  onPressed: () {},
                  icon: const Icon(Icons.offline_bolt_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
