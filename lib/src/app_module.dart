import 'package:recursos_humanos/src/app_bloc.dart';
import 'package:recursos_humanos/src/person/person_repository.dart';
import 'package:recursos_humanos/src/person/person_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:recursos_humanos/src/app_widget.dart';


class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => PersonBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency((i) => PersonRepository()),
      ];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}