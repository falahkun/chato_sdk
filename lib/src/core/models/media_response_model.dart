import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_response_model.g.dart';

@JsonSerializable()
class MediaResponseModel extends Equatable {
  /**
   * {
      "file_original_name": "screenshot-1669106031016.png",
      "file_name": "1_1669793885-screenshot-1669106031016.png",
      "file_url": "https://res.cloudinary.com/gamatechno/raw/upload/v1669793887/worxspace/messaging/1_1669793885-screenshot-1669106031016.png",
      "file_type": ".png",
      "file_size": 73383
      }
   */

  factory MediaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseModelFromJson(json);

  @JsonKey(name: 'file_original_name')
  final String? fileOriginalName;
  @JsonKey(name: 'file_name')
  final String? fileName;
  @JsonKey(name: 'file_url')
  final String? fileUrl;
  @JsonKey(name: 'file_type')
  final String? fileType;
  @JsonKey(name: 'file_size')
  final int? FileSize;

  MediaResponseModel({
    this.fileOriginalName,
    this.fileName,
    this.fileUrl,
    this.fileType,
    this.FileSize,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        fileOriginalName,
        fileName,
        fileUrl,
        fileType,
        FileSize,
      ];
}
