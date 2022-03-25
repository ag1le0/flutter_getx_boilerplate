// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      nameRole: json['name_role'] as String? ?? '',
      deptCode: (json['dept_code'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      factory: json['factory'] as String? ?? '',
      mail: json['mail'] as String? ?? '',
      line: json['line'] as String? ?? '',
      shift: json['shift'] as String? ?? '',
      idArea: json['id_area'] as int? ?? 0,
      hireDate: json['hire_date'] as String? ?? '',
      shiftUser: json['shift_user'] as String? ?? '',
      idFactory: json['id_factory'] as int? ?? 0,
      empNo: json['emp_no'] as String? ?? '',
      name: json['name'] as String? ?? '',
      idDepartment: json['id_department'] as int? ?? 0,
      idRole: json['id_role'] as int? ?? 0,
      userLevel: json['user_level'] as int? ?? 0,
      id: json['id'] as int? ?? 0,
      floor: json['floor'] as String? ?? '',
      department: json['department'] as String? ?? '',
      dayOfWeek: json['day_of_week'] as int? ?? 0,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name_role': instance.nameRole,
      'dept_code': instance.deptCode,
      'factory': instance.factory,
      'mail': instance.mail,
      'line': instance.line,
      'shift': instance.shift,
      'id_area': instance.idArea,
      'hire_date': instance.hireDate,
      'shift_user': instance.shiftUser,
      'id_factory': instance.idFactory,
      'emp_no': instance.empNo,
      'name': instance.name,
      'id_department': instance.idDepartment,
      'id_role': instance.idRole,
      'user_level': instance.userLevel,
      'id': instance.id,
      'floor': instance.floor,
      'department': instance.department,
      'day_of_week': instance.dayOfWeek,
    };
