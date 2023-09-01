class userModel {
  List<String>? webPages;
  String? alphaTwoCode;
  String? country;
  String? stateProvince;
  String? name;
  List<String>? domains;

  userModel(
      {this.webPages,
      this.alphaTwoCode,
      this.country,
      this.stateProvince,
      this.name,
      this.domains});

  userModel.fromJson(Map<String, dynamic> json) {
    webPages = json['web_pages'].cast<String>();
    alphaTwoCode = json['alpha_two_code'];
    country = json['country'];
    stateProvince = json['state-province'];
    name = json['name'];
    domains = json['domains'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['web_pages'] = this.webPages;
    data['alpha_two_code'] = this.alphaTwoCode;
    data['country'] = this.country;
    data['state-province'] = this.stateProvince;
    data['name'] = this.name;
    data['domains'] = this.domains;
    return data;
  }
}
