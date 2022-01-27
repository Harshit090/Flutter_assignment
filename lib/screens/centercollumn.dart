import 'package:flutter/material.dart';

import '../widget/screen1/centercolumnsection2.dart';
import '../widget/screen1/centercolumnsection3.dart';
import '../widget/screen1/centercolumnsection4.dart';
import '../widget/screen1/centercolumnsection5.dart';
import '../widget/screen1/centercolumnsection6.dart';
import '../widget/screen1/centercolumnsection7.dart';
import '../widget/screen1/centercolumnsection8.dart';
import '../widget/screen1/centercolumntop.dart';

class CenterColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CenterColumnTop(),
          const Divider(
            color: Colors.black45,
          ),
          ImageSectionColumn(),
          SideScrollGallery(),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: SigningSection(),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: FollowSection(),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: PublishSection(),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: CreativeFiels(),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: LastSectionButton(),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.money_off_csred_rounded),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.money_off_csred_rounded),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: TextButton(
                    child: Row(
                      children: const [
                        Icon(Icons.report_problem_rounded),
                        Text('Report')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: const SizedBox(height: 20, width: double.infinity,),)
        ],
      ),
    );
  }
}
