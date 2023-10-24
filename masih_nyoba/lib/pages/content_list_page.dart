import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/like_model.dart';

class ContentListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Konten'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Konten ${index + 1}'),
            subtitle: Text('Likes: ${Provider.of<LikeModel>(context).likes}'),
            onTap: () {
              Provider.of<LikeModel>(context, listen: false).addLike();
            },
          );
        },
      ),
    );
  }
}
