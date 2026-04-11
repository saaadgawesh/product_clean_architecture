import 'package:product_clean_architecture/config/di/service_locator.dart';
import 'package:product_clean_architecture/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(myapp());
}
