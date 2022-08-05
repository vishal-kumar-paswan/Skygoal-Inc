import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '/screens/college_list.dart';
import '/utils/constants.dart';

// Card contents
const card1ImagePath = 'assets/images/image1.jfif';
const card1Title = 'Top Colleges';
const card1Description =
    'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.';

const card2ImagePath = 'assets/images/image2.jfif';
const card2Title = 'Top Schools';
const card2Description =
    'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.';

const card3ImagePath = 'assets/images/image3.jfif';
const card3Title = 'Exams';
const card3Description =
    'Find an end to end information about the exams that are happening in India.';

// Bottom sheet items
const listItem1ImagePath = 'assets/icons/bachelor_of_technology.png';
const listItem1Title = 'Bachelor of Technology';

const listItem2ImagePath = 'assets/icons/bachelor_of_architecture.png';
const listItem2Title = 'Bachelor of Architecture';

const listItem3ImagePath = 'assets/icons/pharmacy.png';
const listItem3Title = 'Pharmacy';

const listItem4ImagePath = 'assets/icons/law.png';
const listItem4Title = 'Law';

const listItem5ImagePath = 'assets/icons/management.png';
const listItem5Title = 'Management';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int radioGroup = 1;

    // Bottom modal sheet implementation
    Future<void> openBottomSheet() {
      return showModalBottomSheet<void>(
        elevation: 2.0,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Container(
              decoration: const BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.40,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 22),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Sort by',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.clear_rounded,
                            color: Constants.black,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      height: 10,
                      color: Constants.grey800,
                    ),
                    Flexible(
                      child: ListTile(
                        leading: const ImageIcon(
                          AssetImage(listItem1ImagePath),
                          color: Constants.black,
                        ),
                        title: const Text(listItem1Title),
                        trailing: Radio(
                          activeColor: Constants.accentColor,
                          value: 1,
                          groupValue: radioGroup,
                          onChanged: (T) {
                            setState(() {
                              radioGroup = int.parse(T.toString());
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const CollegeList()),
                                ),
                              );
                            });
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: ListTile(
                        leading: const ImageIcon(
                          AssetImage(listItem2ImagePath),
                          color: Constants.black,
                        ),
                        title: const Text(listItem2Title),
                        trailing: Radio(
                          activeColor: Constants.accentColor,
                          value: 2,
                          groupValue: radioGroup,
                          onChanged: (T) {
                            setState(() {
                              radioGroup = int.parse(T.toString());
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const CollegeList()),
                                ),
                              );
                            });
                          },
                        ),
                        onTap: () {},
                      ),
                    ),
                    Flexible(
                      child: ListTile(
                        leading: const ImageIcon(
                          AssetImage(listItem3ImagePath),
                          color: Constants.black,
                        ),
                        title: const Text(listItem3Title),
                        trailing: Radio(
                          activeColor: Constants.accentColor,
                          value: 3,
                          groupValue: radioGroup,
                          onChanged: (T) {
                            setState(() {
                              radioGroup = int.parse(T.toString());
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const CollegeList()),
                                ),
                              );
                            });
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: ListTile(
                        leading: const ImageIcon(
                          AssetImage(listItem4ImagePath),
                          color: Constants.black,
                        ),
                        title: const Text(listItem4Title),
                        trailing: Radio(
                          activeColor: Constants.accentColor,
                          value: 4,
                          groupValue: radioGroup,
                          onChanged: (T) {
                            setState(() {
                              radioGroup = int.parse(T.toString());
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const CollegeList()),
                                ),
                              );
                            });
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: ListTile(
                        leading: const ImageIcon(
                          AssetImage(listItem5ImagePath),
                          color: Constants.black,
                        ),
                        title: const Text(listItem5Title),
                        trailing: Radio(
                          activeColor: Constants.accentColor,
                          value: 5,
                          groupValue: radioGroup,
                          onChanged: (T) {
                            setState(
                              () {
                                radioGroup = int.parse(T.toString());
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: ((context) => const CollegeList()),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }));
        },
      );
    }

    // Card implementation
    Widget card(BuildContext context, String imagePath, String title,
            String description) =>
        InkWell(
          onTap: () => openBottomSheet(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.height * 0.80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Constants.black.withOpacity(0.9),
                    Colors.transparent,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 20, right: 70, bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      '121 Colleges',
                      style: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              elevation: 0.0,
              shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(55),
                  bottomRight: Radius.circular(55),
                ),
              ),
              toolbarHeight: MediaQuery.of(context).size.height * 0.12,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Find your own way',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Search over 600 colleges around!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.bell_solid,
                    size: 21,
                  ),
                ),
              ],
              bottom: AppBar(
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
            ),
          ];
        },
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  card(context, card1ImagePath, card1Title, card1Description),
                  const SizedBox(height: 10),
                  card(context, card2ImagePath, card2Title, card2Description),
                  const SizedBox(height: 10),
                  card(context, card3ImagePath, card1Title, card3Description),
                ],
              ),
            ),
          ),
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
