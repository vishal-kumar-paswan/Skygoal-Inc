import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '/screens/college_description.dart';
import '/utils/constants.dart';

// Card details
const college1Name = 'MVSH Engineering College';
const college1ImagePath = 'assets/images/college1.jpg';
const college1Description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut iullamcorpeerdiet sed nec ullamcorpe erdiet.';
const college1Rating = 4.3;
const college1Views = 600;

const college2Name = 'MVSH Engineering College';
const college2ImagePath = 'assets/images/college2.jpg';
const college2Description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut iullamcorpeerdiet sed nec ullamcorpe erdiet.';
const college2Rating = 4.3;
const college2Views = 600;

const college3Name = 'MVSH Engineering College';
const college3ImagePath = 'assets/images/college3.jpg';
const college3Description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut iullamcorpeerdiet sed nec ullamcorpe erdiet.';
const college3Rating = 4.3;
const college3Views = 600;

const likeIcon = 'assets/icons/like.png';

class CollegeList extends StatelessWidget {
  const CollegeList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Scrollable tag implementation
    Widget scrollableTag(String name) => Container(
          decoration: BoxDecoration(
            color: Constants.grey200,
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Center(
              child: Text(name),
            ),
          ),
        );

    // Card implementation
    Widget collegeCard(BuildContext context, String imagePath, String name,
            String description, double rating, int views) =>
        InkWell(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Card(
              elevation: 5,
              color: Constants.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              CircleAvatar(
                                maxRadius: 18,
                                backgroundColor: Constants.primaryColor,
                                child: Icon(
                                  Icons.share_outlined,
                                  color: Constants.black,
                                ),
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundColor: Constants.primaryColor,
                                child: Icon(
                                  Icons.bookmark_border,
                                  color: Constants.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          name,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        Flexible(
                                          child: Text(
                                            description,
                                            style: TextStyle(
                                              color: Constants.grey800,
                                            ),
                                            overflow: TextOverflow.clip,
                                          ),
                                        )
                                      ],
                                    )),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 65,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(7),
                                            color: Colors.green,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '$rating',
                                                style: const TextStyle(
                                                  color: Constants.primaryColor,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              const SizedBox(width: 4),
                                              const Icon(
                                                Icons.star,
                                                color: Constants.primaryColor,
                                                size: 16,
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadiusDirectional
                                                    .circular(7),
                                            color: Constants.accentColor,
                                          ),
                                          height: 28,
                                          width: 90,
                                          child: const Center(
                                            child: Text(
                                              'Apply Now',
                                              style: TextStyle(
                                                color: Constants.primaryColor,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        height: 5,
                        color: Constants.grey500,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            // color: Colors.brown,
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                likeIcon,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                'More than 1000+ students have been placed',
                                style: TextStyle(fontSize: 12),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.remove_red_eye,
                                color: Colors.grey,
                                size: 20,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                '$views+',
                                style: const TextStyle(fontSize: 11),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const CollegeDescription()),
              ),
            );
          },
        );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(55),
            bottomRight: Radius.circular(55),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.75,
              child: TextField(
                expands: true,
                maxLength: null,
                maxLines: null,
                decoration: InputDecoration(
                  fillColor: Constants.primaryColor,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Constants.grey800,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Constants.grey800,
                  ),
                  hintText: 'Search for colleges, schools..',
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Constants.primaryColor,
              ),
              child: const Icon(
                CupertinoIcons.mic_solid,
                color: Constants.accentColor,
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                // color: Colors.red,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    scrollableTag(college1Name),
                    scrollableTag(college2Name),
                    scrollableTag(college3Name),
                  ],
                ),
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  collegeCard(
                    context,
                    college1ImagePath,
                    college1Name,
                    college1Description,
                    college1Rating,
                    college1Views,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  collegeCard(
                    context,
                    college2ImagePath,
                    college2Name,
                    college2Description,
                    college2Rating,
                    college2Views,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  collegeCard(
                    context,
                    college3ImagePath,
                    college3Name,
                    college3Description,
                    college3Rating,
                    college3Views,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
