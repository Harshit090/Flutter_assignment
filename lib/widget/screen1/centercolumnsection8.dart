import 'package:flutter/material.dart';

class LastSectionButton extends StatelessWidget {
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
      child: 
        
         Row(
          children: [
            ElevatedButton(
              child: const Text(
                'Exhibition design',
                style: TextStyle(fontSize: 16),
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
        ),
      
    );
  }
}
