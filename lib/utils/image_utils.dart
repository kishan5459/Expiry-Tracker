import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class ImageUtils {
  static Future<String> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();

    final imageDir = Directory('${directory.path}/item_images');
    if (!await imageDir.exists()) {
      await imageDir.create(recursive: true);
    }

    final filename =
        'item_${DateTime.now().millisecondsSinceEpoch}${path.extension(imagePath)}';
    final destinationPath = '${imageDir.path}/$filename';

    final File newImage = await File(imagePath).copy(destinationPath);
    return newImage.path;
  }
}
