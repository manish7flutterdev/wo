import 'package:flutter/material.dart';

import 'custom_text.dart';

class CenterTile extends StatelessWidget {
  const CenterTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              CustomText(
                text: "45.8K",
                size: 15.0,
                weight: FontWeight.bold,
              ),
              CustomText(
                text: "Followers",
                size: 13.0,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://newprofilepic2.photo-cdn.net//assets/images/article/profile.webp",
                    )),
                border: Border.all(
                    width: 1, color: Color.fromRGBO(104, 104, 104, 1)),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15)),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              CustomText(
                text: "2000",
                size: 15.0,
                weight: FontWeight.bold,
              ),
              CustomText(
                text: "Following",
                size: 13.0,
                color: Colors.grey,
              )
            ],
          ),
        ],
      ),
    );
  }
}
