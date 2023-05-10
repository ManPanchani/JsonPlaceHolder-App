import '../globals/global.dart';

class JsonPlaceHolder {
  late int userId;
  late int id;
  late int postId;
  late int albumId;
  late String title;
  late String body;
  late String name;
  late String username;
  late String email;
  late bool completed;

  JsonPlaceHolder.post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  JsonPlaceHolder.comments({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  JsonPlaceHolder.album({
    required this.userId,
    required this.id,
    required this.title,
  });

  JsonPlaceHolder.photo({
    required this.albumId,
    required this.id,
    required this.title,
  });

  JsonPlaceHolder.todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  JsonPlaceHolder.user({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory JsonPlaceHolder.fromMap({required Map data}) {
    if (Global.endpoint == "/posts") {
      return JsonPlaceHolder.post(
        userId: data['userId'],
        id: data['id'],
        title: data['title'],
        body: data['body'],
      );
    } else if (Global.endpoint == "/comments") {
      return JsonPlaceHolder.comments(
        postId: data['postId'],
        id: data['id'],
        name: data['name'],
        email: data['email'],
        body: data['body'],
      );
    } else if (Global.endpoint == "/albums") {
      return JsonPlaceHolder.album(
        userId: data['userId'],
        id: data['id'],
        title: data['title'],
      );
    } else if (Global.endpoint == "/photos") {
      return JsonPlaceHolder.photo(
        albumId: data['albumId'],
        id: data['id'],
        title: data['title'],
      );
    } else if (Global.endpoint == "/todos") {
      return JsonPlaceHolder.todo(
        userId: data['userId'],
        id: data['id'],
        title: data['title'],
        completed: data['completed'],
      );
    }
    return JsonPlaceHolder.user(
        id: data['id'],
        name: data['name'],
        username: data['username'],
        email: data['email']);
  }
}