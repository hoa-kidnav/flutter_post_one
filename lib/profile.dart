class Profile {
  static int id = 0;
  static String username = "";
  static String email = "";
  static String first_name = "";
  static String last_name = "";
  static String phone = "";
  static String avatar = "";
  static String address = "";
  static int role_id = 0;
  Profile();
  factory Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    first_name = json['first_name'];
    last_name = json['last_name'];
    phone = json['phone'];
    avatar = json['avatar'];
    address = json['address'];
    role_id = json['role_id'];
    return Profile();
  }
}
