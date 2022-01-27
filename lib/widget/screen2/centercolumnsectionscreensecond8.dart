import 'package:flutter/material.dart';

class LastSectionButton extends StatelessWidget {
  
  Widget ButtonName(String buttonName) {
    return Row(
      children: [
        ElevatedButton(
          child: Text(
            buttonName,
            style: const TextStyle(fontSize: 16),
          ),
          style: ButtonStyle(
            // padding:
            //     MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          onPressed: () => null,
        ),
      ],
    );
  }

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
        children: [
          Row(
            children: [
              ButtonName('app'),
              ButtonName('automation'),
              ButtonName('dark'),
            ],
          ),
          Row(
            children: [
              ButtonName('home'),
              ButtonName('homepage'),
              ButtonName('Iot'),
            ],
          ),
          Row(
            children: [
              ButtonName('minimal'),
              ButtonName('mobile'),
              ButtonName('UI'),
            ],
          ),
          ButtonName('Ux')
        ],
      ),
    );
  }
}
