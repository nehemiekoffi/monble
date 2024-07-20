import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

@collection
class Project extends Model {
  final String name;

  final String description;

  final DateTime startDate;

  final DateTime endDate;

  final num goal;

  Project({
    this.name = "",
    this.description = "",
    DateTime? startDate,
    DateTime? endDate,
    this.goal = 0,
  })  : startDate = startDate ?? DateTime.now(),
        endDate = endDate ?? DateTime.now().add(const Duration(days: 7)),
        super();
}
