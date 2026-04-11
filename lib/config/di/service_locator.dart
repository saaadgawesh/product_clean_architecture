import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:product_clean_architecture/config/di/service_locator.config.dart';

final servicelocator = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => servicelocator.init();
