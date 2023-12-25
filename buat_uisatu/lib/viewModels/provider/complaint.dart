// Import statements
import 'dart:io';

import 'package:buat_uisatu/models/complaint.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

// ComplaintProvider class
class AddComplaintProvider extends ChangeNotifier {
  String _selectedLocation = 'Tambahkan Alamat';
  String get selectedLocation => _selectedLocation;

  TextEditingController complaintTextFieldController = TextEditingController();
  TextEditingController contentTextFieldController = TextEditingController();
  bool isJalanSelected = false;

  XFile? _imageFile;
  String? _imageName;
  VideoPlayerController? _videoPlayerController;
  String? _videoPath;
  String? _videoName;

  List<CategoryName> category = [
    CategoryName(id: 1, name: "Kekerasan"),
    CategoryName(id: 2, name: "Pelecehan"),
    // ... (Tambahkan kategori lain sesuai kebutuhan)
  ];

  CategoryName? selectedValue;

  void handleLocationSelection() {
    isJalanSelected = true;
    notifyListeners();
  }

  Future<void> postComplaint(Complaint complaint) async {
    try {
      final Dio dio = Dio();
      Map<String, dynamic> complaintData = {
        'category_id': complaint.categoryId,
        'title': complaint.title,
        'status': complaint.status,
        'content': complaint.content,
        'attachment': complaint.attachment,
        // tambahkan atribut keluhan lain sesuai kebutuhan
      };

      var response = await dio.post(
        'your_api_endpoint', // Ganti dengan endpoint API yang sesuai
        data: FormData.fromMap(complaintData),
      );

      if (response.statusCode == 200) {
        print('Keluhan berhasil diposting: ${response.data}');
      } else {
        print('Gagal memposting keluhan. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error posting complaint: $e');
    }
  }

  // Existing code for image and video handling

  void toggleVideoPlayPause() {
    if (_videoPlayerController!.value.isPlaying) {
      _videoPlayerController!.pause();
    } else {
      _videoPlayerController!.play();
    }
    notifyListeners();
  }

  void updateSelectedLocation(String locationSelected) {}

  // Existing code for other methods
}

// CategoryName class
class CategoryName {
  CategoryName({this.id, this.name});

  int? id;
  String? name;
}