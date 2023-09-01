import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:webingo_project/model/userModel.dart';

class ApiModel {
  Future fetchProducts() async {
    var response = await http.get(
        Uri.parse('http://universities.hipolabs.com/search?country=India'));

    if (response.statusCode == 200) {
      var jsondata = response;
      log("api Response===>" + jsondata.toString());
      // return userModel.fromJson(jsondata);
    }
  }
}
