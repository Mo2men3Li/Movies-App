class UserInfo {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String phone;
  final int avatarId;

  UserInfo({
    required this.name,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.phone,
    required this.avatarId,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'phone': phone,
      'avaterId': avatarId,
    };
  }

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      confirmPassword: json['confirmPassword'],
      phone: json['phone'],
      avatarId: json['avaterId'],
    );
  }
}
