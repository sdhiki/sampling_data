# Tugas Sheeling Tools - Sampling Data

## Penjelasan Kode
1. Download file
wget https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

2. Convert setiap sheet di excel menjadi CSV
in2csv weather_data.xlsx --sheet "weather_2014" > weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > weather_2015.csv

3. Mengabungkan 2 file CSV menjadi 1 CSV
csvstack weather_2014.csv weather_2015.csv > weather.csv

4. Menghapus file excel
rm weather_data.xlsx

5. Sampling dengan rate 0.3 dan simpan ke file sample_weather.csv
head weather.csv | sample -r 0.3 > sample_weather.csv
