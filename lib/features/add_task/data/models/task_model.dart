import 'package:hive/hive.dart';

part 'task_model.g.dart';
@HiveType(typeId: 0)
class TaskModel {
  @HiveField(0)
  final String title;
  @HiveField(1)
  String? subTitle;
  @HiveField(2)
  String? time;
  @HiveField(3)
  String? date;
  @HiveField(4)
  int? categoryId;

  TaskModel({
    required this.title,
    this.subTitle,
    this.time,
    this.date,
    this.categoryId,
  });
}
