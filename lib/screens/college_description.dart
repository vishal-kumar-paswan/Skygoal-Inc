import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:skygoal_app_demo/utils/constants.dart';

// College details
const collegeName = 'GHJK Engineering College';
const collegeImagePath = 'assets/images/college1.jpg';
const collegeMap = 'assets/images/map.png';
const collegeDescription =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut iullamcorpeerdiet sed nec ullamcorpe erdiet.';
const collegeAddress = 'Lorem ipsum dolor sit amet, consectetur';
const collegeDistance = 'College in 400mtrs';
const hostelDescription =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.';
const washroomFacility = 'Bathrooms : 2';
const rating = 4.3;
const studentName = 'Arun Sai';
const studentImages = [
  'assets/images/student1.jpg',
  'assets/images/student2.jpg',
  'assets/images/student3.jpg',
  'assets/images/student4.jpg',
];
const studentReview =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.';
const imageList = [
  'assets/images/hostel1.jpg',
  'assets/images/hostel2.jpg',
  'assets/images/hostel3.jpg',
];

const bedIcon = 'assets/icons/bed.png';
const locationIcon = 'assets/icons/location.png';
const collegeIcon = 'assets/icons/college.png';
const washroomIcon = 'assets/icons/washroom.png';

class CollegeDescription extends StatefulWidget {
  const CollegeDescription({Key? key}) : super(key: key);

  @override
  State<CollegeDescription> createState() => _CollegeDescriptionState();
}

class _CollegeDescriptionState extends State<CollegeDescription>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  int currentImagePosition = 0;

  Widget bedCount(int count) => Container(
        decoration: BoxDecoration(
          color: Constants.primaryColor,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3),
          child: Center(
            child: Row(
              children: [
                const ImageIcon(AssetImage(bedIcon)),
                const SizedBox(width: 8),
                Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: Constants.primaryColor,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Constants.accentColor,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 15, 0),
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Constants.primaryColor,
                    child: IconButton(
                      icon: const Icon(
                        Icons.bookmark_outline,
                        color: Constants.black,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
              ],
              pinned: false,
              backgroundColor: Constants.primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 250.0,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(collegeImagePath),
                        fit: BoxFit.fill,
                      )),
                      // child: FlutterLogo(),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14.0, vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    collegeName,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 5),
                                  Flexible(
                                    child: Text(
                                      collegeDescription,
                                      style: TextStyle(
                                        color: Constants.grey700,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '$rating',
                                        style: TextStyle(
                                          color: Constants.primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 7),
                                      Icon(
                                        Icons.star,
                                        color: Constants.primaryColor,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    // Divider(height: 15, color: Constants.grey800)
                  ],
                ),
              ),
              expandedHeight: 400.0,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Constants.accentColor,
                labelColor: Constants.black,
                tabs: const [
                  Tab(
                    child: Text(
                      'About college',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constants.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Hostel facility',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constants.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Q & A',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constants.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Events',
                      style: TextStyle(
                        fontSize: 16,
                        color: Constants.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
                controller: _controller,
              ),
            )
          ];
        },
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              collegeDescription,
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 18),
                            const Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 180,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(collegeMap),
                                    fit: BoxFit.fill),
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            const SizedBox(height: 18),
                            const Text(
                              'Student Review',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                customImageIcon(studentImages[0]),
                                customImageIcon(studentImages[1]),
                                customImageIcon(studentImages[2]),
                                customImageIcon(studentImages[3]),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Constants.grey300,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: const Center(
                                      child: Text(
                                    '12+',
                                    style: TextStyle(
                                      color: Constants.accentColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Card(
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      studentName,
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      studentReview,
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text('⭐⭐⭐⭐')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                bedCount(4),
                                bedCount(3),
                                bedCount(2),
                                bedCount(1),
                              ],
                            ),
                            const SizedBox(height: 15),
                            CarouselSlider(
                              options: CarouselOptions(
                                height: 160.0,
                                enableInfiniteScroll: false,
                                viewportFraction: 0.55,
                                initialPage: 0,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    currentImagePosition = index;
                                  });
                                },
                              ),
                              items: imageList.map((imagePath) {
                                return Builder(
                                  builder: (BuildContext context) {
                                    return Container(
                                      width: 190,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(imagePath),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.yellow,
                                      ),
                                    );
                                  },
                                );
                              }).toList(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: imageList.map((imagePath) {
                                int index = imageList.indexOf(imagePath);
                                return Container(
                                  width: 8.0,
                                  height: 8.0,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 2.0, vertical: 10.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentImagePosition == index
                                        ? Constants.accentColor
                                        : const Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Text(
                                  collegeName,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Spacer(),
                                Container(
                                  height: 25,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(7),
                                    color: Colors.green,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        '$rating',
                                        style: TextStyle(
                                          color: Constants.primaryColor,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Icon(
                                        Icons.star,
                                        color: Constants.primaryColor,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  locationIcon,
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(width: 5),
                                const Text(
                                  collegeAddress,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              hostelDescription,
                              style: TextStyle(
                                fontSize: 17,
                                color: Constants.grey800,
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              'Facilities',
                              style: TextStyle(
                                color: Constants.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  collegeIcon,
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  collegeDistance,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset(
                                  washroomIcon,
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  washroomFacility,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming Soon!',
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Coming Soon!',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Constants.accentColor),
        height: 55,
        width: MediaQuery.of(context).size.width * 0.90,
        child: const Center(
          child: Text(
            'Apply Now',
            style: TextStyle(
              color: Constants.primaryColor,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget customImageIcon(String imagePath) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 50,
          width: 50,
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
