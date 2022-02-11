class LoginRequest {
  String? email;
  String? password;
  String? device_token;
  String?  lang;

  LoginRequest({
    this.email,
    this.password,
    this.device_token,
    this.lang});


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}