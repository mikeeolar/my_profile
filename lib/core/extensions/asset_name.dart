// ignore_for_file: non_constant_identifier_names

extension AssetName on String {
  String get svg => 'assets/svgs/$this.svg';
  String get png => 'assets/images/$this.png';
  String get jpeg => 'assets/images/$this.jpeg';
  String get JPG => 'assets/images/$this.JBG';
  String get jpg => 'assets/images/$this.jpg';
  String get mp4 => 'assets/video/$this.mp4';
  String get m4v => 'assets/video/$this.m4v';
  String get gif => 'assets/gif/$this.gif';
  bool get isPasswordValid => RegExp(r'(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,15}$)').hasMatch(this);
  bool get passwordHasSmallLetters => RegExp(r'(?=.*[a-z])').hasMatch(this);
  bool get passwordHasCapitalLetters => RegExp(r'(?=.*[A-Z])').hasMatch(this);
  bool get passwordHasSymbols => RegExp(r'(?=.*[!@#\$%\^&\*])').hasMatch(this);
  bool get passwordHasNumber => RegExp(r'(?=.*[0-9])').hasMatch(this);
  bool get passwordIsInRange => RegExp(r'(?=.{8,15}$)').hasMatch(this);
  String capitalizeAllFirst() {
    if(length<1) {
      return this;
    } else {
      String temp = '';
      final List<String> dusted = [];
      for(final String item in split(' ')) {
        if(item.trim() != '') {
          dusted.add(item);
        }
      }
      for(final String item in dusted) {
        temp+="${item.trim()[0].toUpperCase()}${item.trim().substring(1).toLowerCase()}${split(' ').indexOf(item) == split(' ').length-1 ? '' : ' '}";
      }
      return temp;
    }
  } 
  String maskMiddle() {
    final List<String> texts = split('');
    if(texts.length < 2) {
      return this;
    } else {
      String temp = '';
      int ind = 0;
      for(final String item in texts) {
        if(ind > 2 && ind < texts.length-3) {
          temp+='*';
        } else {
          temp+=item;
        }
        ind+=1;
      }
      return temp;
    }
  } 
  String firstLast4() {
    final List<String> texts = split('');
    if(texts.length < 8) {
      return this;
    } else {
      return '${substring(0, 4)}...${substring(length-4, length)}';
    }
  } 
  String last4() {
    final List<String> texts = split('');
    if(texts.length < 8) {
      return this;
    } else {
      return '*******${substring(length-4, length)}';
    }
  }
  String spaceCardNumber() {
    String val = '';
    List<String> items = split('');
    int id = 0;
    for(String i in items) {
      val+=i;
      id++;
      if(id == 4) {
        val+=' ';
        id=0;
      }
    }
    return val;
  }
  String addSlash() {
    String val = '';
    List<String> items = split('');
    int id = 0;
    for(String i in items) {
      val+=i;
      id++;
      if(id == 2) {
        val+='/';
      }
    }
    return val;
  }
  String get walletNumber => replaceAll('+234', '');
}
