create or replace PACKAGE weather_api_pkg AS
  PROCEDURE get_weather_info(
    p_city       IN VARCHAR2,
    p_temp       OUT NUMBER,
    p_lat        OUT NUMBER,
    p_lon        OUT NUMBER,
    p_weather    OUT VARCHAR2,
    p_city_name  OUT VARCHAR2
  );
END weather_api_pkg;
/