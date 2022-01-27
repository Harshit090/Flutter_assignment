import 'package:flutter/material.dart';

class CreativeFiels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
            'CREATIVE FIELDS',
            style: TextStyle(fontSize: 16, color: Colors.black45),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              ElevatedButton(
                child: const Text(
                  'Exhibition design',
                  style: TextStyle(fontSize: 22),
                ),
                style: ButtonStyle(
                  // padding:
                  //     MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black87),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
