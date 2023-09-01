import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webingo_project/controller/profile_controller.dart';
import 'package:webingo_project/views/dashboard_page.dart';

import '../widgets/card_contaner.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  ProfileController profileContainer = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<ProfileController>(builder: (_) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white24,
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          title: const Text(
            "Transfer Money",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          actions: [
            Container(
              height: 45,
              width: 45,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white24),
              child: const Icon(Icons.timeline),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ListTile(
                // tileColor: Colors.white24,
                leading: Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white24,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/logo.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                title: const Text(
                  'Reetam Maity',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
                subtitle: const Text(
                  '998546****',
                  style: TextStyle(
                    color: Colors.white24,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                trailing: Container(
                  height: 30,
                  width: 30,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white24,
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Enter an Amount',
                    style: TextStyle(color: Colors.white54)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 14,
                      child: Text(
                        '\$',
                        // textAlign: TextAlign.,
                        style: TextStyle(
                            fontSize: 30,
                            color:
                                profileContainer.textEditingController.text ==
                                        ''
                                    ? Colors.white30
                                    : Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: width - 54,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: profileContainer.textEditingController,
                        onChanged: ((value) {
                          profileContainer.update();
                        }),
                        style:
                            const TextStyle(fontSize: 30, color: Colors.white),
                        decoration: const InputDecoration(
                            hintText: '00.00',
                            hintStyle:
                                TextStyle(color: Colors.white30, fontSize: 30),
                            focusedBorder: UnderlineInputBorder(),
                            border: UnderlineInputBorder()),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.white24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          profileContainer.textEditingController.text =
                              '${(index + 1) * 100}';
                          profileContainer.update();
                        },
                        child: Container(
                          width: 80,
                          height: 25,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white24),
                          child: Text(
                            '\$${(index + 1) * 100}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Chooae card",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: width / 2 + 40,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const CardContainer(
                      name: 'Family',
                      mony: '123,45',
                      number: '****234',
                      date: '01/23',
                    );
                  },
                ),
              ),
              const SizedBox(height: 100),
              GestureDetector(
                onTap: () {
                  //  / Get.to(() => const DashboardPage());
                },
                child: Container(
                  height: 52,
                  width: width - 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 212, 177),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text(
                    "Transfer Money",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
