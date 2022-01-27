import 'package:flutter/material.dart';

import '../widget/screen2/centercolumnsectionscreensecond2.dart';
import '../widget/screen2/centercolumnsectionscreensecond3.dart';
import '../widget/screen2/centercolumnsectionscreensecond4.dart';
import '../widget/screen2/centercolumnsectionscreensecond5.dart';
import '../widget/screen2/centercolumnsectionscreensecond6.dart';
import '../widget/screen2/centercolumnsectionscreensecond8.dart';
import 'package:behance/widget/screen2/products_made_for.dart';
import '../widget/screen2/centercolumntop.dart';

class CenterColumnSecond extends StatelessWidget {
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
            child: ProductsMade(),
          ),
          Container(
            color: Colors.black12,
            padding: EdgeInsets.all(15),
            child: PublishSection(),
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
                  child: TextButton(
                    child: Row(
                      children: const [
                        Icon(Icons.copyright),
                        Text('All Rights Reserved')
                      ],
                    ),
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
