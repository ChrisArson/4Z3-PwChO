## 2.
```
docker build -t lab4docker .
```

## 3.
a.
 ```
 docker service create -d \
 --name RemoteVol \
 --mount 'type=volume,source=nfsvolume,target=/app,volume-driver=local,volume-opt=type=nfs,volume-opt=device=:/var/docker-nfs,volume-opt=o=addr=10.0.0.10' \
 nginx:latest
 ```
 
 b.
 ```
 docker volume create \
	--driver local \
	--opt type=cifs \
	--opt device=//uxxxxx.your-server.de/backup \
	--opt o=addr=uxxxxx.your-server.de,username=uxxxxxxx,password=*****,file_mode=0777,dir_mode=0777 \
	--name RemoteVol
 ```

## 4.
```
docker run --it --name alpine4 --memory=512m --mount source=RemoteVol, target=/logi lab5docker .
```
 
 ## 5.
 a. Aby sprawdzic zawartosc pliku info.log nalezy w konsoli uruchomionego kontenera sprawdzic czy istnieje plik komenda ``ls``, a nastepnie zawartosc pliku komenda ``cat info.log`` <br/>
 b.``
 docker stats --no-stream --format {{.MemUsage}} alpine4
 ``
