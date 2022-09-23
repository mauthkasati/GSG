import 'Data.dart';
import 'MyObject.dart';

void main() {
  List<MyObject> objList = [];
  for (int i = 0; i < data.length; i++) {
    objList.add(MyObject.fromMap(data[i]));
  }
  //this print is for test only
  print(objList[0].toString());
  print('-------------------------------');

  //test for the number of different state_provinces in the list
  //and I found that there is null or 18 different states only
  //so it is possiple to change the type of state-province to enum
  Set set = {};
  for (int i = 0; i < data.length; i++) {
    set.add(data[i]['state-province']);
  }
  int len = set.length;
  print('number of different values for state-province : $len');
  print('different values for state-province : $set');
  print('-------------------------------');

  //here I test for the number of attributes int each domains list
  //I found that there is only 1,2 and 3 possiple attributes in the list
  //there is no null values, 4298 of one attribute, 62 of two attributes and 2 of three domains
  //so, I suggest to convert the type to string and deals with 64 attributes separately
  Set<int> set2 = {};
  List<int> numCount = [0, 0, 0, 0];
  for (int i = 0; i < data.length; i++) {
    set2.add(data[i]['domains'].length);
    if (data[i]['domains'].length == 1) {
      numCount[0]++;
    } else if (data[i]['domains'].length == 2) {
      numCount[1]++;
    } else if (data[i]['domains'].length == 3) {
      numCount[2]++;
    } else {
      numCount[3]++;
    }
  }
  int len2 = set2.length;
  print('number of different values for domains : $len2');
  print('different values for domains : $set2');
  print('values for domains : $numCount');
  print('-------------------------------');

  //for alpha_two_code keys thers is only one value which is US
  //and for country keys there is only one value which is United States
  //so I suggest to neglect them
  Set set3 = {};
  Set set4 = {};
  for (int i = 0; i < data.length; i++) {
    set3.add(data[i]['alpha_two_code']);
    set4.add(data[i]['country']);
  }
  int len3 = set3.length, len4 = set4.length;
  print('number of different values for alpha_two_code : $len3');
  print('different values for alpha_two_code : $set3');
  print('number of different values for country : $len4');
  print('different values for country : $set4');
  print('-------------------------------');

  //here I test for the number of attributes int each wep_pages list
  //I found that there is only 1 or 2 possiple attributes in the list
  //there is no null values, 4344 of one attribute and 18 of two attributes
  //so, I suggest to convert the type to string and deals with 18 attributes separately
  Set<int> set5 = {};
  List<int> numCount2 = [0, 0, 0];
  for (int i = 0; i < data.length; i++) {
    set5.add(data[i]['web_pages'].length);
    if (data[i]['web_pages'].length == 1) {
      numCount2[0]++;
    } else if (data[i]['web_pages'].length == 2) {
      numCount2[1]++;
    } else {
      numCount2[2]++;
    }
  }
  int len5 = set5.length;
  print('number of different values for web_pages : $len5');
  print('different values for web_pages : $set5');
  print('values for web_pages : $numCount2');
  print('-------------------------------');
}
