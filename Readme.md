Run gqrx in a docker continer with web browser access.

To start:

 ```
 docker run -d   --privileged \
    --name=gqrx \
    -e PUID=1000 \
    -e PGID=1000 \
    -e TZ=Europe/London \
    -p 3002:3000 \
    -v /dev/bus/usb:/dev/bus/usb \
    -v /var/run/dbus:/var/run/dbus \
    -v /var/run/avahi-daemon/socket:/var/run/avahi-daemon/socket \
    jessm33/gqrx 
```

Access at http://\<server\>:3002

When done:
```
docker rm -f gqrx
```