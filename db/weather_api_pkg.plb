create or replace PACKAGE BODY weather_api_pkg AS
  PROCEDURE get_weather_info(
    p_city       IN VARCHAR2,
    p_temp       OUT NUMBER,
    p_lat        OUT NUMBER,
    p_lon        OUT NUMBER,
    p_weather    OUT VARCHAR2,
    p_city_name  OUT VARCHAR2
  ) IS
    l_response CLOB;
    l_url      VARCHAR2(4000);
  BEGIN
    l_url := 'https://api.openweathermap.org/data/2.5/weather?q=' || p_city ||
             '&appid=Insert API_Key here';

    l_response := apex_web_service.make_rest_request(
      p_url         => l_url,
      p_http_method => 'GET'
    );

    -- ✅ Log the full JSON response
    apex_debug.message('Full JSON: ' || l_response);
    apex_debug.message('Parsed Weather: ' || p_weather);

    apex_json.parse(l_response);

    p_temp      := apex_json.get_number(p_path => 'main.temp');
    p_city_name := apex_json.get_varchar2(p_path => 'name');
    p_lat       := apex_json.get_number(p_path => 'coord.lat');
    p_lon       := apex_json.get_number(p_path => 'coord.lon');
    p_weather   := apex_json.get_varchar2(p_path => 'weather[0].description');

  EXCEPTION
    WHEN OTHERS THEN
      p_temp      := NULL;
      p_lat       := NULL;
      p_lon       := NULL;
      p_weather   := 'Error fetching data';
      p_city_name := NULL;
  END get_weather_info;
END weather_api_pkg;
/