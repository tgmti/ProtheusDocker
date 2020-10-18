FROM postgres:10.6

ENV LANG pt_BR.iso88591

# root localedef, define config
RUN echo 'root:postgres' | chpasswd
RUN localedef -i pt_BR -c -f ISO-8859-1 -A /usr/share/locale/locale.alias pt_BR.iso88591
RUN chmod 777 /usr/lib/locale/locale-archive

USER postgres
RUN localedef -i pt_BR -c -f ISO-8859-1 -A /usr/share/locale/locale.alias pt_BR.iso88591

COPY pg12.01.25Init.tar.gz /var/lib/postgresql/
COPY restore.sh /docker-entrypoint-initdb.d/restore.sh
