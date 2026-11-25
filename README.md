# AKAMAI-APP-SENSOR
Generador de `sensor_data` para el SDK Android de Akamai Bot Manager.

Servidor HTTP local: escucha en `127.0.0.1:1337` y devuelve un sensor listo para usar.

## Descarga

Del apartado **Releases**: el binario de tu sistema y, si lo necesitas, el pool completo de dispositivos.

## Arranque

Linux / macOS:

```bash
chmod +x akamai-bmp-linux-amd64
cp db/devices.example.json db/devices.json
./akamai-bmp-linux-amd64 -port 1337 -devicepath db/devices.json
```
Windows:

```
copy db\devices.example.json db\devices.json
akamai-bmp-windows-amd64.exe -port 1337 -devicepath db\devices.json
```

## Peticion

POST /akamai/bmp

Content-Type: application/json

Body

```
{
  "app": "es.dia",
  "lang": "es_ES",
  "version": "3.3.4",
  "challenge": true,
  "powUrl": "https://www.dia.es"
}

```
Versiones admitidas: 3.3.4, 3.3.1, 3.3.0, 3.2.3, 3.1.0, 2.2.3, 2.2.2, 2.1.2.
