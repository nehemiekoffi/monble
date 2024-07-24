import 'package:get_it/get_it.dart';
import 'package:monble/core/services/storage_service.dart';

final find = GetIt.instance;

void setupInjectionContainer() {
  GetIt.instance.registerSingletonAsync(setupStorage);
}
