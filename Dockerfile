FROM julianbei/alpine-opencv-microimage:p2-3.1

RUN apk add --update \
            libxml2-dev \
            libxslt-dev \
            libffi-dev \
            cairo \
            zip \
            freetype-dev \
            bash && \
            rm -rf /var/cache/apk/* && \
            pip install scipy==0.19.0 scikit-image==0.13.0

RUN mv /usr/local/lib/python2.7/site-packages/cv2.so /usr/lib/python2.7/site-packages/cv2.so && \
    ln /dev/null /dev/raw1394
