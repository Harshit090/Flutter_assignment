import 'package:flutter/material.dart';

class ProductsMade extends StatelessWidget {
  Widget CreatorName(
      String imageAddress, String creatorName, String creatorComment) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imageAddress),
              fit: BoxFit.fill,
            ),
          ),
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
                child: Text(
                  creatorName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Icon((Icons.location_on)),
                    Text(
                      creatorComment,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
            'PROJECT MADE FOR',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 5,),
          CreatorName(
            "assets/images/screen2.png",
            "Saturn Design",
            'Banglore, India',
          ),
          const SizedBox(height: 5,),
          CreatorName(
            "assets/images/screen2.png",
            "Google Design",
            'Prague, Czech Republic',
          ),
          const SizedBox(height: 5,),
          CreatorName(
            "assets/images/screen2.png",
            "Adobe india",
            'Banglore, India',
          ),
          const SizedBox(height: 5,),
        ],
      ),
    );
  }
}
