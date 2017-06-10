//json object
JSONObject json;
//coord varaibles
float lon;
float lat;

//system varaibles
int sunR;
int sunS;

//main weather varaiables
float temp;
float pressure;
int humidity;

//wind variables
float speed;
float windD;

//cloud varaible
int cloud;

//weather variables
int ID;
String condition;
String description;
String icon;
PImage weatherIcon;

void update_data() {
  //weather link to bring json data to processing doc
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/forecast?id=524901&APPID=6120282445534fc06801321be0bfcc0a&units=metric");
  
  lon = json.getJSONObject("city").getJSONObject("coord").getFloat("lon");
  lat = json.getJSONObject("city").getJSONObject("coord").getFloat("lat");
  //JSONArray list = json.getJSONArray("list");
  //println(list[0]);
  //temp = json.getJSONArray("list").getJSONObject("main").getFloat("temp");
  //pressure = json.getJSONArray("list").getJSONObject("main").getFloat("pressure");
  //humidity = json.getJSONArray("list").getJSONObject("main").getInt("humidity");
  
  //speed = json.getJSONArray("list").getJSONObject("wind").getFloat("speed");
  
  //cloud = json.getJSONArray("list").getInt("clouds");
  
  //description = json.getJSONArray("list").getJSONArray("weather").getString("description");
 
  weatherIcon = loadImage("http://openweather.org/img/w/" + icon + ".png");

}