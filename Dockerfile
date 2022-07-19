FROM python:3.10-buster

COPY script/install_ruby /
RUN bash install_ruby