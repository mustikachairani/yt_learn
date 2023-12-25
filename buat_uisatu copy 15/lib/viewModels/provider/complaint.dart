import 'dart:io';

import 'package:buat_uisatu/models/complaint.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

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
    // Logika posting keluhan
    try {
      final Dio dio = Dio();
      // Gunakan data keluhan dari objek Complaint
      Map<String, dynamic> complaintData = {
        'category_id': complaint.categoryId,
        'title': complaint.title,
        'status': complaint.status,
        'content': complaint.content,
        'attachment': complaint.attachment,
        // tambahkan atribut keluhan lain sesuai kebutuhan
      };

      // Handle response
      var response;
      if (response.statusCode == 200) {
        print('Keluhan berhasil diposting: ${response.data}');
      } else {
        print('Gagal memposting keluhan. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error posting complaint: $e');
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    // Logika pemilihan gambar
    try {
      final XFile? pickedFile = await ImagePicker().pickImage(
        source: source,
      );
      if (pickedFile != null) {
        _imageFile = pickedFile;
        _imageName = pickedFile.name;
        notifyListeners();
      }
    } catch (e) {
      _imageFile = null;
      notifyListeners();
      print('Error picking image: $e');
    }
  }

  Future<void> _pickVideo() async {
    // Logika pemilihan video
    try {
      final XFile? pickedFile = await ImagePicker().pickVideo(
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        _videoPlayerController =
            VideoPlayerController.file(File(pickedFile.path!))
              ..initialize().then((_) {
                _videoPlayerController!.play();
                notifyListeners();
              });

        final String fileName =
            '${DateTime.now().millisecondsSinceEpoch}_${pickedFile.path.split('/').last}';
        _videoPath = pickedFile.path;
        _videoName = fileName;

        notifyListeners();

        print('_videoName: $_videoName');
      }
    } catch (e) {
      _videoPlayerController = null;
      _videoPath = null;
      _videoName = null;

      notifyListeners();
      print('Error picking video: $e');
    }
  }

  void updateSelectedLocation(String locationSelected) {}
}

class CategoryName {
  CategoryName({this.id, this.name});

  int? id;
  String? name;
}
