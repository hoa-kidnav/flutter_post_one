class Token {
  static String value = "";
  Token();
  factory Token.fromJson(Map<String, dynamic> json) {
    value = json['token'];
    return Token();
  }
}
