import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

part 'project.g.dart';

@collection
class Project extends Model {
  final String name;

  final String description;

  final DateTime startDate;

  final DateTime endDate;

  final double goal;

  Project({
    required this.startDate,
    required this.endDate,
    this.name = "",
    this.description = "",
    this.goal = 0,
  }) : super();
}
