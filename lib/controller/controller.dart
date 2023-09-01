import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  var searchResults = <dynamic>[].obs;
  var searchQuery = ''.obs;
  var isLoading = false.obs;
  var count = 0.obs;

  Future fetchSearchResults(String search) async {
    // final query = search.trim();
    isLoading.value = true;
    try {
      final response = await http.get(
        Uri.parse('http://universities.hipolabs.com/search?country=$search'),
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        count.value = 1;
        if (data != null || data.isNotEmpty) {
          searchResults.assignAll(data);
          isLoading.value = false;
        } else {
          searchResults.clear();
        }
      } else {
        searchResults.clear();
      }
    } finally {
      isLoading.value = false;
    }
  }
}
