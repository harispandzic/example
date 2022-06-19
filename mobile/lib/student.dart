import 'dart:convert';

class Student {
  final String name;
  final String surname;

  Student({required this.name, required this.surname});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: json["name"],
      surname: json["surname"],
    );
  }

  Map<String, dynamic> toJson() => {"name": name, "surname": surname};
}
