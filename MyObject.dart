class MyObject {
  List<String>? domains;
  String? alphaTwoCode;
  String? country;
  List<String>? webPages;
  String? name;
  String? stateProvince;
  MyObject.fromMap(Map<String, dynamic> mp) {
    domains = mp['domains'];
    alphaTwoCode = mp['alpha_two_code'];
    country = mp['country'];
    webPages = mp['web_pages'];
    name = mp['name'];
    stateProvince = mp['state-province'];
  }
  toMap() {
    return {
      'domains': domains,
      'alpha_two_code': alphaTwoCode,
      'country': country,
      'web_pages': webPages,
      'name': name,
      'state-province': stateProvince
    };
  }

  @override
  String toString() {
    String s = '';
    s += 'domains : $domains\n';
    s += 'alpha_two_code : $alphaTwoCode\n';
    s += 'country : $country\n';
    s += 'web_pages : $webPages\n';
    s += 'name : $name\n';
    s += 'state-province : $stateProvince\n';
    return s;
  }
}
