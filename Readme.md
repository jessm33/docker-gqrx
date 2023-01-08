Run gqrx in a docker continer with web browser access.  This image has minimal security and should only be run on trusted networks, and should be shutdown/removed when not in use

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

You should mute the audio in gqrx before starting the dsp to imporve preformance. audio mute button is in the lower right side of the window.

If gqrx doesn't open for some reason you can right click on the black desktop and selcet "terminal emulator" and enter `gqrx -re` to manually start gqrx.

When done:
```
docker rm -f gqrx
```