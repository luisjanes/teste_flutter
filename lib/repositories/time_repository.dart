import 'package:flutter/material.dart';
import '../models/time.dart';
import '../models/titulo.dart';

class TimesRepository{
  final List<Time> _times = [];

  get times => this._times;

  void addTitulo({Time? time, Titulo? titulo}){
    time?.titulos.add(titulo!);
  }

  TimesRepository(){
    _times.addAll([
      Time(
        name: "Corinthians",
        pontos: 85,
        brasao: "https://ssl.gstatic.com/onebox/media/sports/logos/tCMSqgXVHROpdCpQhzTo1g_48x48.png",
        color: Colors.black12,
      ),
      Time(
        name: "São Paulo",
        pontos: 84,
        brasao: "https://ssl.gstatic.com/onebox/media/sports/logos/4w2Z97Hf9CSOqICK3a8AxQ_48x48.png",
        color: Colors.red,
      ),
      Time(
        name: "Palmeiras",
        pontos: 83,
        brasao: "https://ssl.gstatic.com/onebox/media/sports/logos/7spurne-xDt2p6C0imYYNA_48x48.png",
        color: Colors.green,
      ),
      Time(
        name: "Santos",
        pontos: 82,
        brasao: "https://ssl.gstatic.com/onebox/media/sports/logos/VHdNOT6wWOw_vJ38GMjMzg_48x48.png",
        color: Colors.white70,
      ),
    ]);
  }
}