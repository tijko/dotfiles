FROM debian:latest

WORKDIR /home
RUN useradd -m -p foobar -s /bin/bash tijko
WORKDIR /home/tijko
COPY vim-setup.sh .
RUN chmod +x vim-setup.sh
RUN chown tijko:tijko vim-setup.sh
RUN ./vim-setup.sh

CMD /bin/bash
