FROM messense/cargo-zigbuild:latest

ENV RUSTUP_HOME=/usr/local/rustup
ENV CARGO_HOME=/usr/local/cargo

RUN rustup toolchain install nightly && \
    rustup default nightly && \
    rustup target add x86_64-linux-android aarch64-linux-android armv7-linux-androideabi i686-linux-android

WORKDIR /
