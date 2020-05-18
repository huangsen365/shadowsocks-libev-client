FROM shadowsocks/shadowsocks-libev

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV PASSWORD=
ENV METHOD      aes-256-gcm
ENV TIMEOUT     300
ENV BIND_ADDR       0.0.0.0
ENV BIND_PORT       7074
ENV TZ UTC
ENV ARGS=

CMD exec ss-local \
      -b $BIND_ADDR \
      -l $BIND_PORT \
      -s $SERVER_ADDR \
      -p $SERVER_PORT \
      -k ${PASSWORD:-$(hostname)} \
      -m $METHOD \
      -t $TIMEOUT \
      -u \
      $ARGS
