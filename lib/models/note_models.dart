import 'package:hive_flutter/adapters.dart';

part 'note_models.g.dart';

@HiveType(typeId: 0)
class NoteModels extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String Date;
  @HiveField(3)
  final int color;

  NoteModels(
      {required this.title,
      required this.subtitle,
      required this.Date,
      required this.color});
}
