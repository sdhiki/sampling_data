# download
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# convert sheet xlsx to csv
in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

# merge 2 csv to 1 csv
csvstack weather_2014.csv weather_2015.csv > weather.csv

# delete file excel
rm weather_data.xlsx

# sampling rate 0.3
head weather.csv | sample -r 0.3 > sample_weather.csv
