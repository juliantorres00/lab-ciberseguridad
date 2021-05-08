import requests,json

api_key= "afd41cc50a824a611f549d4fb67a94a6"

nombreciudad=input("La ciudad es:")

url="http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=afd41cc50a824a611f549d4fb67a94a6"
response=requests.get(url)

x=response.json()

if x["cod"] != "404":
    print(x)
    y=x["main"]
    temp=y["temp"]
    pres=y["pressure"]
    hum=y["humidity"]
    z=x["weather"]
    descript=z[0]["description"]
    print("tem. en grados kelvin")
    str(temp)
    "\n presion ="+str(pres)
    "\n humedad ="+str(hum)
    "\n descripcion ="+str(descript)
else:
    print("ciudad no encontrada")