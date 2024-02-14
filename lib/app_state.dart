import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _viewlistpegawai = false;
  bool get viewlistpegawai => _viewlistpegawai;
  set viewlistpegawai(bool value) {
    _viewlistpegawai = value;
  }

  bool _listviewPB = false;
  bool get listviewPB => _listviewPB;
  set listviewPB(bool value) {
    _listviewPB = value;
  }

  bool _columnPBAutoriti = false;
  bool get columnPBAutoriti => _columnPBAutoriti;
  set columnPBAutoriti(bool value) {
    _columnPBAutoriti = value;
  }

  bool _columnPBBBBB = false;
  bool get columnPBBBBB => _columnPBBBBB;
  set columnPBBBBB(bool value) {
    _columnPBBBBB = value;
  }

  bool _ListViewBorangSah = false;
  bool get ListViewBorangSah => _ListViewBorangSah;
  set ListViewBorangSah(bool value) {
    _ListViewBorangSah = value;
  }
}
