import 'package:get_it/get_it.dart';
import 'package:monble/core/services/storage_service.dart';

final find = GetIt.instance;

class InjectionContainer {
  const InjectionContainer._();

  static void setup() {
    GetIt.instance.registerSingletonAsync(StorageService.init);
  }
}
