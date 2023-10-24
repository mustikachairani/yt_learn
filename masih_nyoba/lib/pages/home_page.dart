import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:masih_nyoba/models/like_model.dart';
import 'content_list_page.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Likes App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Likes: ${Provider.of<LikeModel>(context).likes}',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<LikeModel>(context, listen: false).addLike();
              },
              child: Text('Tambah Like'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContentListPage()),
                );
              },
              child: Text('Lihat Konten'),
            ),
          ],
        ),
      ),
    );
  }
}
