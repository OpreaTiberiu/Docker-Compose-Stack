FROM postgres:17

# Install required packages to compile pgvector
RUN apt-get update && \
    apt-get install -y git build-essential postgresql-server-dev-17 && \
    git clone --branch v0.8.0 https://github.com/pgvector/pgvector.git && \
    cd pgvector && make && make install && \
    cd .. && rm -rf pgvector && \
    apt-get remove --purge -y git build-essential postgresql-server-dev-17 && \
    apt-get autoremove -y && apt-get clean

# Set the default database encoding
ENV LANG=en_US.utf8