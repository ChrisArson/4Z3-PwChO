#wybranie obrazu node
FROM alpine
#informacje o autorze
LABEL author = "Arkadiusz Szumny"
#utworzenie katalogu roboczego
WORKDIR /usr/src/app
#podlaczenie wolumenu
VOLUME /logi
#skopiowanie pliku pluto.sh
COPY pluto.sh pluto.sh
#uruchomienie na starcie kontenera pliku pluto.sh
ENTRYPOINT ["./pluto.sh"]