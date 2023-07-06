
# asciidoc-oci

> A container image for building asciidoc documents.

The container image is based on [Fedora](https://getfedora.org) and everything needed for rebuilding the image is stored in this git repository. It is built on GitHub and published to `ghcr.io/jonasbjork/asciidoctor:latest`

You want to mount your asciidoc source directory as `/data` in the container. The output will be stored in `/data/out/book.pdf` in the container, so you will find it in `out/book.pdf` in your asciidoc source directory.

## Using

Pull the image:

    $ podman pull ghcr.io/jonasbjork/asciidoctor

To build the document:

    $ podman run --rm -e DOCUMENT=mydoc.adoc -v .:/data ghcr.io/jonasbjork/asciidoctor

