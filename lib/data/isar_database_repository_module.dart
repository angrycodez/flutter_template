import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_template/data/data.dart';

class IsarDataRepositoryModule extends Module {
  IsarDataRepositoryModule(this.applicationDocumentDirectory, this.databaseFilename);

  String applicationDocumentDirectory;
  String databaseFilename;

  @override
  List<Module> get imports => [IsarDataModule(applicationDocumentDirectory, databaseFilename)];

  @override
  void binds(Injector i) {}

  @override
  void exportedBinds(i) {
    i.addSingleton<ISettingsRepository>(SettingsRepository.new);
  }
}
