import 'package:flutter/material.dart';

class Global {
  static String endpoint = "/posts";
  static String title = "Posts";

  static post({
    required int id,
    required String title,
    required String subtitle,
    required int userid,
    required BuildContext context,
    required Map e,
  }) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("details2",arguments: e);
        },
        leading: Text(id.toString()),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(userid.toString()),
      ),
    );
  }

  static comment({
    required int id,
    required String title,
    required String subtitle,
    required int postId,required BuildContext context,
    required Map e,
  }) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("details2",arguments: e);
        },
        leading: Text(id.toString()),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(postId.toString()),
      ),
    );
  }

  static album({
    required int id,
    required String title,
    required int userId,required BuildContext context,
    required Map e,
  }) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("details2",arguments: e);
        },
        leading: Text(id.toString()),
        title: Text(title),
        trailing: Text(userId.toString()),
      ),
    );
  }

  static photo({
    required int id,
    required String title,
    required int albumId,
    required BuildContext context,
    required Map e,
  }) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("details2",arguments: e);
        },
        leading: Text(id.toString()),
        title: Text(title),
        trailing: Text(albumId.toString()),
      ),
    );
  }

  static todo({
    required int id,
    required String title,
    required bool subtitle,
    required int userId,
    required BuildContext context,
    required Map e,
  }) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("details2",arguments: e);
        },
        leading: Text(id.toString()),
        title: Text(title),
        subtitle: Text(subtitle.toString()),
        trailing: Text(userId.toString()),
      ),
    );
  }

  static user({
    required int id,
    required String title,
    required String name,
    required String subtitle,
    required BuildContext context,
    required Map e,
  }) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).pushNamed("details2",arguments: e);
        },
        leading: Text(id.toString()),
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(title), Text(name)]),
        subtitle: Text(subtitle),
      ),
    );
  }
}