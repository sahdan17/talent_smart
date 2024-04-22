class Users {
  int? id;
  String? email;
  String? password;
  String? remember_token;
  String? role;

  Users(
      {this.id,
      this.email,
      this.password,
      this.remember_token,
      this.role,});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        id: json['data']['id'],
        email: json['data']['email'],
        password: json['data']['password'],
        remember_token: json['data']['token'],
        role: json['data']['role'],
        );
  }
}
