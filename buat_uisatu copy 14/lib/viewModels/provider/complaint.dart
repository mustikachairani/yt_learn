import 'package:buat_uisatu/models/complaint.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddComplaintProvider extends ChangeNotifier {
  String _selectedLocation = 'Tambahkan Alamat';
  String get selectedLocation => _selectedLocation;
  String _pesan = '';
  String get pesan => _pesan;

  MediaModel _mediaModel = MediaModel();
  MediaModel get mediaModel => _mediaModel;

  void updateSelectedLocation(String location) {
    _selectedLocation = location;
    notifyListeners();
  }

  void updatePesan(String pesan) {
    _pesan = pesan;
    notifyListeners();
  }

  void setImagePath(String path, String name) {
    _mediaModel = MediaModel(imagePath: path, imageName: name);
    notifyListeners();
  }

  void setVideoPath(String path, String name) {
    _mediaModel = MediaModel(videoPath: path, videoName: name);
    notifyListeners();
  }

  void postComplaint(Complaint newComplaint) {}
}

class MediaModel {
  String? imagePath;
  String? videoPath;
  String? imageName;
  String? videoName;

  MediaModel({this.imagePath, this.videoPath, this.imageName, this.videoName});
}
