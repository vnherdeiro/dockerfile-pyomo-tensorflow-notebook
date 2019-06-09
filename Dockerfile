FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get install -y build-essential glpk-utils python3 python3-pip locales curl wget openssl libhdf5-dev liblapack-dev libatlas-base-dev gfortran libpq-dev gsl-bin libgslcblas0 libnlopt0 coinor-libipopt-dev unzip tree

RUN pip3 install --upgrade pip && pip install pyomo numpy scipy matplotlib scikit-learn pandas tensorflow jupyter keras notebook jupyterlab

RUN wget http://ampl.com/dl/open/ipopt/ipopt-linux64.zip; unzip ipopt-linux64.zip; mv ipopt /usr/bin; chmod a+x /usr/bin/ipopt;

EXPOSE	5000

CMD ["jupyter", "lab", "--port=5000", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
