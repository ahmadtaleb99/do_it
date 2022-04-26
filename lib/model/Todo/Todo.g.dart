// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Todo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoAdapter extends TypeAdapter<Todo> {
  @override
  final int typeId = 1;

  @override
  Todo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todo(
      description: fields[1] as String,
      title: fields[2] as String,
      date: fields[3] as DateTime,
      todoType: fields[4] as TodoType,
      isCompleted: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Todo obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.todoType)
      ..writeByte(5)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TodoTypeAdapter extends TypeAdapter<TodoType> {
  @override
  final int typeId = 2;

  @override
  TodoType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return TodoType.GYM;
      case 2:
        return TodoType.GOING;
      case 3:
        return TodoType.SPORT;
      case 4:
        return TodoType.SHOPPING;
      case 5:
        return TodoType.PARTY;
      case 6:
        return TodoType.OTHER;
      default:
        return TodoType.GYM;
    }
  }

  @override
  void write(BinaryWriter writer, TodoType obj) {
    switch (obj) {
      case TodoType.GYM:
        writer.writeByte(1);
        break;
      case TodoType.GOING:
        writer.writeByte(2);
        break;
      case TodoType.SPORT:
        writer.writeByte(3);
        break;
      case TodoType.SHOPPING:
        writer.writeByte(4);
        break;
      case TodoType.PARTY:
        writer.writeByte(5);
        break;
      case TodoType.OTHER:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
