import 'package:colorful_greetings/history/model/history_model.dart';
import 'package:flutter/material.dart';

extension ToHistoryModel on Color {
  HistoryModel toHistoryModel() {
    return HistoryModel(red: this.red, green: this.green, blue: this.blue);
  }
}
