import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class StorageService<T> {
  const StorageService._();

  static Future<Isar> init() async {
    final directory = await getApplicationDocumentsDirectory();
    return Isar.open(
      [],
      directory: directory.path,
      inspector: true,
    );
  }
}
