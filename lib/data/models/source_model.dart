import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/source.dart';

part 'source_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class SourceModel {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String name;

  SourceModel(this.id, this.name);

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);

  Map<String, dynamic> toJson() => _$SourceModelToJson(this);
}

extension SourceModelX on SourceModel {
  Source toEntity() {
    return Source(id: id, name: name);
  }
}
