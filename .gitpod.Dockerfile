FROM gitpod/workspace-full
                    
USER gitpod

WORKDIR /home/gitpod

    #/home/gitpod/flutter/bin/flutter upgrade && \
RUN git clone https://github.com/flutter/flutter && \
    /home/gitpod/flutter/bin/flutter channel master && \
    /home/gitpod/flutter/bin/flutter config --enable-web && \
    /home/gitpod/flutter/bin/flutter --version

ENV PUB_CACHE=/workspace/.pub_cache
ENV PATH="/home/gitpod/flutter/bin:$PATH"
