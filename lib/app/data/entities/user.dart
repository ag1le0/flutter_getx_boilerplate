import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class User {
  String nameRole;
  List<String> deptCode;

  String factory;

  String mail;

  String line;

  String shift;

  int idArea;

  String hireDate;

  String shiftUser;

  int idFactory;

  String empNo;

  String name;

  int idDepartment;

  int idRole;

  int userLevel;

  int id;

  String floor;

  String department;

  int dayOfWeek;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User({
    this.nameRole = '',
    this.deptCode = const [],
    this.factory = '',
    this.mail = '',
    this.line = '',
    this.shift = '',
    this.idArea = 0,
    this.hireDate = '',
    this.shiftUser = '',
    this.idFactory = 0,
    this.empNo = '',
    this.name = '',
    this.idDepartment = 0,
    this.idRole = 0,
    this.userLevel = 0,
    this.id = 0,
    this.floor = '',
    this.department = '',
    this.dayOfWeek = 0,
  });
}
