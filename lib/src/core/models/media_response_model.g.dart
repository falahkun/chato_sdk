// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaResponseModel _$MediaResponseModelFromJson(Map<String, dynamic> json) =>
    MediaResponseModel(
      fileOriginalName: json['file_original_name'] as String?,
      fileName: json['file_name'] as String?,
      fileUrl: json['file_url'] as String?,
      fileType: json['file_type'] as String?,
      FileSize: json['file_size'] as int?,
    );

Map<String, dynamic> _$MediaResponseModelToJson(MediaResponseModel instance) =>
    <String, dynamic>{
      'file_original_name': instance.fileOriginalName,
      'file_name': instance.fileName,
      'file_url': instance.fileUrl,
      'file_type': instance.fileType,
      'file_size': instance.FileSize,
    };
