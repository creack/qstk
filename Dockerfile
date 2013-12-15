FROM		ubuntu:12.10
MAINTAINER	Guillaume J. Charmes <guillaume@charmes.net>

RUN		apt-get update -qq
RUN		apt-get install -qqy wget

RUN		mkdir /src
RUN		cd /src && wget --no-check-certificate http://pypi.python.org/packages/source/Q/QSTK/QSTK-0.2.6.tar.gz
RUN		cd /src && tar -xzvf QSTK-0.2.6.tar.gz

RUN		cd /src/QSTK-0.2.6 && sh UbuntuInstallation.sh
RUN		cd /src/QSTK-0.2.6 && python setup.py install
RUN		cd /src/QSTK-0.2.6/Examples && python Validation.py
