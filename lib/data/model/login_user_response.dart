class LoginUserResponse {
  LoginUserResponse({
    this.data,
    this.message,
    this.status,
  });

  Data? data;
  String? message;
  int? status;

  factory LoginUserResponse.fromJson(Map<String, dynamic> json) {
    return LoginUserResponse(
      data: json['data'] != null ? Data.fromJson(json['data']) : null,
      message: json['message'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  Data({
    this.user,
    this.token,
  });

  User? user;
  String? token;

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.type,
    this.age,
    this.img,
  });

  int? id;
  String? name;
  String? email;
  String? phone;
  String? type;
  int? age;
  String? img;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      type: json['type'],
      age: json['age'],
      img: json['img'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['type'] = this.type;
    data['age'] = this.age;
    data['img'] = this.img;
    return data;
  }
}
