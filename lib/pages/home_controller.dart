import '../models/time.dart';

class HomeController{
  List<Time> tabela = [];

  HomeController(){
    tabela=[
      Time(
        name: 'Corinthians',
        pontos: 85,
        brasao: 'https://ssl.gstatic.com/onebox/media/sports/logos/tCMSqgXVHROpdCpQhzTo1g_48x48.png',
      ),
      Time(
        name: 'Santos',
        pontos: 8,
        brasao: 'https://ssl.gstatic.com/onebox/media/sports/logos/VHdNOT6wWOw_vJ38GMjMzg_48x48.png',
      ),
      Time(
        name: 'Palmeiras',
        pontos: 5,
        brasao: 'https://ssl.gstatic.com/onebox/media/sports/logos/7spurne-xDt2p6C0imYYNA_48x48.png',
      )
    ];
  }
}