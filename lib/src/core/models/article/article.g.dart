// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ArticleAdapter extends TypeAdapter<Article> {
  @override
  final int typeId = 0;

  @override
  Article read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Article(
      title: fields[0] as String?,
      description: fields[1] as String?,
      pubDate: fields[2] as String?,
      url: fields[3] as String,
      commentsCount: fields[4] as int,
      reactionsCount: fields[5] as int,
      readingTimeMinutes: fields[6] as int,
      tags: (fields[7] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, Article obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.pubDate)
      ..writeByte(3)
      ..write(obj.url)
      ..writeByte(4)
      ..write(obj.commentsCount)
      ..writeByte(5)
      ..write(obj.reactionsCount)
      ..writeByte(6)
      ..write(obj.readingTimeMinutes)
      ..writeByte(7)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArticleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
