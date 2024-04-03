import 'dart:ui';

import 'titulo.dart';

class Time{
  String name;
  String brasao;
  List<Titulo> titulos = [];
  Color? color;
  int pontos;

  Time({required this.brasao, required this.name,required this.pontos, this.color});
}