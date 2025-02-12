import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'app_root.dart';
import 'main_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String documentsDirectory = join(
    "BackupService",
    (await getApplicationDocumentsDirectory()).path,
  );
  String databaseFilename = "database";

  runApp(
    ModularApp(
      module: MainModule(
        applicationDocumentDirectory: documentsDirectory,
        databaseFilename: databaseFilename,
      ),
      child: const AppRoot(),
    ),
  );
}
