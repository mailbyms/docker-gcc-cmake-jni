# docker build -t mailbyms/gcc-cmake-jni:8.5.0-8u275 .

FROM openjdk:8u275
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list \
    && sed -i 's/security.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list \
    && apt update \
    && apt install g++ cmake -y
    