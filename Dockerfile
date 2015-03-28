FROM amclain/crosstool-ng
MAINTAINER Alex McLain <alex@alexmclain.com>

ENV TOOLCHAIN arm-unknown-eabi

WORKDIR /opt/crosstool-ng

# Build ARM toolchain
ADD config/arm.config .config
RUN ct-ng build CT_ALLOW_BUILD_AS_ROOT_SURE=true
ENV PATH="${PATH}:/opt/crosstool-ng/x-tools/#{TOOLCHAIN}/bin"

WORKDIR /
