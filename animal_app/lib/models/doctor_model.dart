class Doctor {
  String name;
  String idNo;
  String area;
  String email;
  String mobileNo;
  String password;

  Doctor({
    required this.name,
    required this.idNo,
    required this.area,
    required this.email,
    required this.mobileNo,
    required this.password,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      name: json['name'],
      idNo: json['id_no'],
      area: json['area'],
      email: json['email'],
      mobileNo: json['mobile_no'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id_no': idNo,
      'area': area,
      'email': email,
      'mobile_no': mobileNo,
      'password': password,
    };
  }
}
