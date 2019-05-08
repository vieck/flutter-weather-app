class Secret {
    final String weatherApiKey;


    Secret({this.weatherApiKey = ""});

    factory Secret.fromJson(Map<String, dynamic> jsonMap) {
        return new Secret(weatherApiKey:  jsonMap["weather_api_key"]);
    }
}