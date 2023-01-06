import 'package:flutter/material.dart';
import 'package:wo/source/widgets/center_tile.dart';
import 'package:wo/source/widgets/custom_button.dart';
import 'package:wo/source/widgets/navbar.dart';

import '../widgets/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int tabIndex = 1;
  double width = 0.0;
  List<String> images = [
    "https://img.freepik.com/free-vector/browsing-online-concept-illustration_114360-4684.jpg?w=740&t=st=1672925226~exp=1672925826~hmac=2bdb79a9ebe850213035b97746ca5bd992209eca34469342bbec2e36ee610440",
    "https://img.freepik.com/free-vector/image-upload-illustration-concept_114360-766.jpg?w=740&t=st=1672925217~exp=1672925817~hmac=5fa6da8fa94056ee4eb590fe0dcf097192e85abe74bd221bca27e02646f6ba48",
    "https://img.freepik.com/free-photo/beautiful-shot-small-lake-with-wooden-rowboat-focus-breathtaking-clouds-sky_181624-2490.jpg?w=740&t=st=1672925641~exp=1672926241~hmac=f25c40cb3fb26f95904abcc0a645c27ab7326b55ece972e4b859a8f2b3db2d0f",
    "https://img.freepik.com/free-vector/browsing-online-concept-illustration_114360-4684.jpg?w=740&t=st=1672925226~exp=1672925826~hmac=2bdb79a9ebe850213035b97746ca5bd992209eca34469342bbec2e36ee610440",
    "https://img.freepik.com/free-vector/image-upload-illustration-concept_114360-766.jpg?w=740&t=st=1672925217~exp=1672925817~hmac=5fa6da8fa94056ee4eb590fe0dcf097192e85abe74bd221bca27e02646f6ba48",
    "https://img.freepik.com/free-photo/beautiful-shot-small-lake-with-wooden-rowboat-focus-breathtaking-clouds-sky_181624-2490.jpg?w=740&t=st=1672925641~exp=1672926241~hmac=f25c40cb3fb26f95904abcc0a645c27ab7326b55ece972e4b859a8f2b3db2d0f",
    "https://img.freepik.com/free-vector/browsing-online-concept-illustration_114360-4684.jpg?w=740&t=st=1672925226~exp=1672925826~hmac=2bdb79a9ebe850213035b97746ca5bd992209eca34469342bbec2e36ee610440",
    "https://img.freepik.com/free-vector/image-upload-illustration-concept_114360-766.jpg?w=740&t=st=1672925217~exp=1672925817~hmac=5fa6da8fa94056ee4eb590fe0dcf097192e85abe74bd221bca27e02646f6ba48",
    "https://img.freepik.com/free-photo/beautiful-shot-small-lake-with-wooden-rowboat-focus-breathtaking-clouds-sky_181624-2490.jpg?w=740&t=st=1672925641~exp=1672926241~hmac=f25c40cb3fb26f95904abcc0a645c27ab7326b55ece972e4b859a8f2b3db2d0f",
  ];
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                tabIndex = value;
              });
            },
            elevation: 10.0,
            currentIndex: tabIndex,
            selectedItemColor: Color.fromRGBO(100, 225, 220, 1),
            items: [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Feed', icon: Icon(Icons.play_arrow)),
              BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search))
            ]),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            CustomNavBar(),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: Column(
                      children: [
                        CenterTile(),
                        CustomText(
                          text: "Shreshtha Verma",
                          size: 16.0,
                          weight: FontWeight.w600,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          child: CustomText(
                            center: true,
                            text:
                                "Experience Tourism. These are as education in themselves",
                            size: 13.0,
                            weight: FontWeight.w400,
                            color: Colors.grey[300],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        CustomText(
                          text: "www.google.com",
                          size: 14.0,
                          weight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomButton(
                            color: Color.fromRGBO(100, 225, 220, 1),
                            width: MediaQuery.of(context).size.width / 1.2,
                            text: "Following"),
                        SizedBox(
                          height: 20,
                        ),
                        TabBar(
                          tabs: [
                            Tab(
                                icon: Icon(
                              Icons.window,
                              color: Colors.grey,
                            )),
                            Tab(icon: Icon(Icons.feed, color: Colors.grey)),
                            Tab(
                                icon:
                                    Icon(Icons.camera_alt, color: Colors.grey)),
                          ],
                        ),
                        // TabBarView(children: [page1(), page1(), page1()]),
                        Container(
                          height: 400,
                          width: width,
                          child:
                              TabBarView(children: [page1(), page1(), page1()]),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget page1() {
    return Container(
        width: width,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(images[index])),
                  borderRadius: BorderRadius.circular(15)),
            );
          },
        ));
  }
}
