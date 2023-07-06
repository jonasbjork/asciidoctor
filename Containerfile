FROM fedora:37
LABEL org.opencontainers.image.authors="jonas.bjork@gmail.com"

RUN dnf upgrade -y
RUN dnf install -y \
    rubygem-asciidoctor.noarch \
    rubygem-asciidoctor-pdf.noarch \
    rubygem-coderay.noarch
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
# rubygem-rouge.noarch ?
ENTRYPOINT [ "/entrypoint.sh" ]
