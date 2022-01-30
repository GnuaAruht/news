import 'package:json_annotation/json_annotation.dart';
import 'package:news/domain/entities/source.dart';

part 'source_model.g.dart';

@JsonSerializable()
class SourceModel {
  final String? id;
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
