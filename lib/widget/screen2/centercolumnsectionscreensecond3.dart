import 'package:flutter/material.dart';

class SideScrollGallery extends StatelessWidget {
  Widget ImageContainer(String imageAddress) {
    return Container(
      height: double.infinity,
      alignment: Alignment.center, // This is needed
      child: Image.asset(
        imageAddress,
        fit: BoxFit.contain,
        width: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/screen2.png"),
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          'Saturn Design',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                            child: const Text(
                              'Follow',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: ButtonStyle(
                              // padding:
                              //     MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 0, 87, 255)),
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () => null),
                      ),
                      const Divider(thickness: 1,),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ImageContainer('assets/images/image1.jpg'),
                  ImageContainer('assets/images/image2.jpg'),
                  ImageContainer('assets/images/image3.jpg'),
                  ImageContainer('assets/images/image4.jpg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
