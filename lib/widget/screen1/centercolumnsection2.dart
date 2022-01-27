import 'package:flutter/material.dart';

class ImageSectionColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/image1.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/image2.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/image3.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/images/image4.jpg'),
            ),
            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Icon(Icons.thumb_up_alt_rounded),
            // )
          ],
        ),
      ),
    );
  }
}
