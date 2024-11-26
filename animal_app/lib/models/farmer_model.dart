class Farmer {
  String username;
  String contact;
  String location;
  String mobileNo;
  String nicNo;
  String password;

  Farmer({
    required this.username,
    required this.contact,
    required this.location,
    required this.mobileNo,
    required this.nicNo,
    required this.password,
  });

  factory Farmer.fromJson(Map<String, dynamic> json) {
    return Farmer(
      username: json['username'],
      contact: json['contact'],
      location: json['location'],
      mobileNo: json['mobile_no'],
      nicNo: json['NIC_no'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'contact': contact,
      'location': location,
      'mobile_no': mobileNo,
      'NIC_no': nicNo,
      'password': password,
    };
  }
}
