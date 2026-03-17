import 'package:productCleanArchitecture/config/di/service_locator.dart';
import 'package:productCleanArchitecture/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(myapp());
}
