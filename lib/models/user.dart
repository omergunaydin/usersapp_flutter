// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.image,
    required this.workswith,
    required this.job,
    required this.phone,
    required this.website,
    required this.company,
  });

  final int id;
  final String name;
  final String username;
  final String email;
  final String image;
  final List<Workswith> workswith;
  final String job;
  final String phone;
  final String website;
  final Company company;

  User copyWith({
    required int id,
    required String name,
    required String username,
    required String email,
    required String image,
    required List<Workswith> workswith,
    required String job,
    required String phone,
    required String website,
    required Company company,
  }) =>
      User(
        id: id,
        name: name,
        username: username,
        email: email,
        image: image,
        workswith: workswith,
        job: job,
        phone: phone,
        website: website,
        company: company,
      );

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        image: json["image"],
        workswith: List<Workswith>.from(
            json["workswith"].map((x) => Workswith.fromJson(x))),
        job: json["job"],
        phone: json["phone"],
        website: json["website"],
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "image": image,
        "workswith": List<dynamic>.from(workswith.map((x) => x.toJson())),
        "job": job,
        "phone": phone,
        "website": website,
        "company": company.toJson(),
      };

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, email: $email, image: $image, workswith: $workswith, job: $job, phone: $phone, website: $website, company: $company)';
  }
}

class Company {
  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  final String name;
  final String catchPhrase;
  final String bs;

  Company copyWith({
    required String name,
    required String catchPhrase,
    required String bs,
  }) =>
      Company(
        name: name,
        catchPhrase: catchPhrase,
        bs: bs,
      );

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
      };
}

class Workswith {
  Workswith({
    required this.name,
    required this.image,
    required this.job,
  });

  final String name;
  final String image;
  final String job;

  Workswith copyWith({
    required String name,
    required String image,
    required String job,
  }) =>
      Workswith(
        name: name,
        image: image,
        job: job,
      );

  factory Workswith.fromJson(Map<String, dynamic> json) => Workswith(
        name: json["name"],
        image: json["image"],
        job: json["job"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "job": job,
      };
}
