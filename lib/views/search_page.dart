import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webingo_project/controller/controller.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiController apiController = Get.put(ApiController());

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              TextField(
                onChanged: (value) {
                  // Update the query in the controller as the user types
                  // apiController.fetchSearchResults(value);
                  // log(value);
                  apiController.searchQuery.value = value;
                },
                decoration: const InputDecoration(
                  hintText: 'Enter country in lowercase...eg: india',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  log("the function=>${apiController.searchQuery.value}");
                  apiController
                      .fetchSearchResults(apiController.searchQuery.value);
                },
                child: const Text('Search'),
              ),
              const SizedBox(height: 20),
              Obx(() {
                final results = apiController.searchResults;

                if (results.isEmpty) {
                  if (apiController.isLoading.value) {
                    return const CircularProgressIndicator(); // Show loading indicator
                  } else if (!apiController.isLoading.value &&
                      apiController.count.value == 0) {
                    return Text('Welcome to search page');
                  } else {
                    return Text('No data available.');
                  }
                } else {
                  return Container(
                    height: 400,
                    color: Colors.amberAccent,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: results.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(results[index]['name']),
                            subtitle: Text(
                                "${showValidValue(results[index]["state-province"])},${showValidValue(results[index]['country'])}"),
                          ),
                        );
                      },
                    ),
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }

  bool validValue(dynamic value) {
    if (value == null ||
        value.toString().toLowerCase() == "null" ||
        value.toString().toLowerCase() == "") {
      return false;
    } else {
      return true;
    }
  }

  String showValidValue(dynamic value) {
    return validValue(value) ? value.toString() : "NA";
  }
}
