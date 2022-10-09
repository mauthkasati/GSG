class ChkClass {
  String? text = 'default';
  bool? chk = false;
  ChkClass(this.text, this.chk);
  ChkClass.fromMap(Map<String, dynamic> mp) {
    text = mp['text'];
    chk = mp['val'];
  }
}
