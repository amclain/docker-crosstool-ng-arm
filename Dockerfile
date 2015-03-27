FROM amclain/crosstool-ng
MAINTAINER Alex McLain <alex@alexmclain.com>

ENV TOOLCHAIN arm-unknown-linux-gnueabi

# Build ARM toolchain
RUN ct-ng ${TOOLCHAIN}
RUN ct-ng build CT_ALLOW_BUILD_AS_ROOT_SURE=true
ENV PATH="${PATH}:/root/x-tools/arm-unknown-linux-gnueabi/bin"
