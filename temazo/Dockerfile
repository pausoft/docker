FROM library/debian:9
LABEL maintainer="pau.tome@iescarlesvallbona.cat"

RUN apt-get -y update && \
    apt-get install -y python && \
    apt-get install -y ffmpeg && \
    apt-get install -y curl && \
    apt-get install -y mplayer

RUN curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl && \
    mkdir /mp3

COPY temazo.sh /usr/local/temazo.sh
RUN chmod a+rx /usr/local/temazo.sh

# RUN apt-get install -y youtube-dl

ENTRYPOINT [ "/usr/local/temazo.sh"]
CMD [ "https://www.youtube.com/watch?v=e4Ao-iNPPUc" ]
