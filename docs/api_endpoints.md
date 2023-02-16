# Proyecto: MYDASS Experimentos API REST
### API de conexión para la BBDD de experimentos de MYDASS

> Se necesita de una API Key (Bearer Token) para realizar todas las peticiones

## End-point: Todas las mediciones
Devuelve todos los registros de la tabla \`sensors\`. _**Cuidado cuando se llama a este método ya que puede ser muy pesado y tirar el servidor**_

### Parámetros opcionales

- timestamp_ini: Unix Style timestamp
- timestamp_end: Unix Style timestamp


Si se establecen ambos parámetros, entonces se devuelven los registros entre ambos timestamps.

Si se establece únicamente el timestamp_ini, entonces se devuelven los registros mayores a ese timestamp.

Si no se establecen parámetros se devuelven todos los registros.
### Método: GET
>```
>http://localhost:3000/api/v1/sensors/
>```
### Parámetros de la Query

|Parámetro|Valor|
|---|---|
|timestamp_ini|1669893865477|
|timestamp_end|1669893865485|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Mediciones de un usuario
Devuelve todos los registros de la tabla sensors de un **usuario concreto**.

### Parámetros opcionales

- timestamp_ini: Unix Style timestamp
- timestamp_end: Unix Style timestamp


Si se establecen ambos parámetros, entonces se devuelven los registros entre ambos timestamps.

Si se establece únicamente el timestamp_ini, entonces se devuelven los registros mayores a ese timestamp.

Si no se establecen parámetros se devuelven todos los registros.
### Método: GET
>```
>http://localhost:3000/api/v1/sensors/MR-040?timestamp_ini=1671104986847&timestamp_end=1671104986847
>```
### Parámetros de la Query

|Parámetro|Valor|
|---|---|
|timestamp_ini|1671104986847|
|timestamp_end|1671104986847|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Mediciones de un sensor de un sujeto
Devuelve todos los registros de la tabla sensors de un **usuario concreto y un sensor concreto**.

### Parámetros opcionales

- timestamp_ini: Unix Style timestamp
- timestamp_end: Unix Style timestamp


Si se establecen ambos parámetros, entonces se devuelven los registros entre ambos timestamps.

Si se establece únicamente el timestamp_ini, entonces se devuelven los registros mayores a ese timestamp.

Si no se establecen parámetros se devuelven todos los registros.
### Método: GET
>```
>http://localhost:3000/api/v1/sensors/MR-040/sensor_type/2416
>```
### Parámetros de la Query

|Parámetro|Valor|
|---|---|
|timestamp_ini|null|
|timestamp_end|null|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener los datos de un dispositivo de un sujeto
Devuelve todos los registros de la tabla sensors de un **usuario concreto y un dispositivo en concreto**.

### Parámetros opcionales

- timestamp_ini: Unix Style timestamp
- timestamp_end: Unix Style timestamp


Si se establecen ambos parámetros, entonces se devuelven los registros entre ambos timestamps.

Si se establece únicamente el timestamp_ini, entonces se devuelven los registros mayores a ese timestamp.

Si no se establecen parámetros se devuelven todos los registros.
### Método: GET
>```
>http://localhost:3000/api/v1/sensors/MR-040/device_type/2416?timestamp_ini&timestamp_end
>```
### Parámetros de la Query

|Parámetro|Valor|
|---|---|
|timestamp_ini|null|
|timestamp_end|null|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener datos de un sensor de un dispositivo para una persona
Devuelve todos los registros de la tabla sensors de un sensor concreto de un dispositivo concreto para **usuario concreto**.

`/api/v1/sensors/{user_id}/{device_type}/{sensor_type}`

### Parámetros opcionales

- timestamp_ini: Unix Style timestamp
- timestamp_end: Unix Style timestamp


Si se establecen ambos parámetros, entonces se devuelven los registros entre ambos timestamps.

Si se establece únicamente el timestamp_ini, entonces se devuelven los registros mayores a ese timestamp.

Si no se establecen parámetros se devuelven todos los registros.
### Método: GET
>```
>http://localhost:3000/api/v1/sensors/MR-040/2/2416?timestamp_ini=1671104986847&timestamp_end=1671104987206
>```
### Parámetros de la Query

|Parámetro|Valor|
|---|---|
|timestamp_ini|1671104986847|
|timestamp_end|1671104987206|



⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener usuarios
Devuelve los **identificadores de los usuarios únicos** de los que se tienen registro en la BBDD de `sensors`.
### Método: GET
>```
>http://localhost:3000/api/v1/users
>```

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener usuarios y timestamps
Devuelve el **primer y último timestamp** de medición de **todos los usuarios**, junto con sus identificadores.
### Método: GET
>```
>http://localhost:3000/api/v1/users/timestamps
>```

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener timestamps de inicio y de fin para un usuario
Dado un **usuario concreto**, devuelve el **primer y último timestamp** de medición.
### Método: GET
>```
>http://localhost:3000/api/v1/users/timestamps/MR-040
>```

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃

## End-point: Obtener dispositivos
### Método: GET
>```
>http://localhost:3000/api/v1/devices
>```

⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃ ⁃