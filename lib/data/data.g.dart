// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
    };

_$_ToDo _$$_ToDoFromJson(Map<String, dynamic> json) => _$_ToDo(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$_ToDoToJson(_$_ToDo instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'completed': instance.completed,
    };

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: json['id'] as int,
      postId: json['postId'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
