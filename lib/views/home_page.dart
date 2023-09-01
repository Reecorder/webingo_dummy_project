import 'package:flutter/material.dart';
import 'package:webingo_project/views/user_profile.dart';
import 'package:webingo_project/widgets/mycontainer.dart';
import 'package:webingo_project/widgets/profilecontainer.dart';
import 'package:webingo_project/widgets/transaction.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
          "Hello Reetam",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(right: 10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white24),
            child: const Icon(Icons.menu),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Total Balance',
                    style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "\$567,345,00",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 26,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 40,
                        width: 110,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.watch_later,
                              color: Colors.black,
                            ),
                            SizedBox(width: 4),
                            Text('With draw')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: width / 2 + 40,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MyContainer(
                      name: 'Diganta Maity',
                      mony: '123,45',
                      number: '****234',
                      isAdd: index == 2,
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Send money",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 60,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Get.to(() => const UserProfile());
                        }
                      },
                      child: ProfileContainer(
                        image: 'assets/images/elon.jpeg',
                        isAdd: index == 0,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Transaction",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "More",
                      style: TextStyle(
                        color: Colors.white24,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 270,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )),
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 15,
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return const TransactionWidget(
                      name: 'Spotify',
                      date: 'Dec 8, 2023',
                      mony: '-\$25.000',
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
