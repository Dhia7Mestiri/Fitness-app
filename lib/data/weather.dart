class Weather {
  String name = '';
  String description  = '';
  double tempreature = 0;
  double perceived  = 0 ;
  int pressure  = 0;
  int humidity = 0;

  Weather(this.name,this.description , this.tempreature , this.perceived,this.pressure,this.humidity);
  Weather.fromJson(Map<String ,dynamic> weatherMap){
    this.name = weatherMap['name'];
    //this.tempreature = (weatherMap['main']['temp'] * (9/5)-459.67)??0;
    this.tempreature = (weatherMap['main']['temp'] -273.15)??0;
    this.perceived = (weatherMap['main']['feels_like']  -247.15)??0;
    this.pressure = weatherMap['main']['pressure'] ??0;
    this.humidity = weatherMap['main']['humidity'] ??0;
    this.description = weatherMap['weather'][0]['main']??'';
  }


}