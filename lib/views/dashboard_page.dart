import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webingo_project/views/home_page.dart';
import 'package:webingo_project/views/search_page.dart';
import 'package:webingo_project/views/swipetounlock.dart';
import 'package:webingo_project/views/user_profile.dart';
import 'package:webingo_project/widgets/jobscontainer.dart';
import 'package:webingo_project/widgets/search_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late TabController tabController;
  bool currentIndex = true;
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Stack(children: [
      Scaffold(
        backgroundColor: const Color.fromARGB(239, 255, 255, 255),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                // tileColor: Colors.white24,
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/profile.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                title: const Text(
                  'Reetam M.',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                subtitle: const Text(
                  'Quality Assurance',
                  style: TextStyle(
                    color: Color.fromARGB(78, 0, 0, 0),
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
                trailing: Container(
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: const Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'Find a job',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 35),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SearchBar(),
              Expanded(
                child: Container(
                  // height: 500,
                  margin: const EdgeInsets.only(top: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Popular jobs',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 25),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: 5,
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Popular_Jobs(
                              name: "Flutter Developer",
                              company: "Miro Inc.",
                              city: "Kolkata,India",
                              designationCount: 2,
                              isAdd: index == 0,
                            );
                          },
                        ),
                      ),
                      // BottomNavigation(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 50,
        left: 80,
        right: 80,
        child: Container(
          height: 50,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 74, 44, 245),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (() {
                  Get.to(() => const SwipeToUnlock());
                }),
                child: const Icon(
                  Icons.home_rounded,
                  color: Colors.white54,
                  size: 25,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => const SearchPage());
                  },
                  child: Icon(
                    Icons.search,
                    color: currentIndex ? Colors.white : Colors.white54,
                    size: currentIndex ? 30 : 25,
                  )),
              GestureDetector(
                onTap: (() {
                  Get.to(() => const UserProfile());
                }),
                child: const Icon(
                  Icons.person_outline,
                  color: Colors.white54,
                  size: 25,
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
