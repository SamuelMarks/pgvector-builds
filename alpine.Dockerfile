ARG PG_MAJOR=16
ARG PG_VECTOR="0.7.4"

FROM postgres:${PG_MAJOR}-alpine AS builder
ARG PG_MAJOR
ARG PG_VECTOR

WORKDIR /tmp/pgvector
ADD "https://github.com/pgvector/pgvector/archive/refs/tags/v${PG_VECTOR}.tar.gz" .
RUN tar xf "v${PG_VECTOR}.tar.gz" && \
    apk add --no-cache build-base clang15 llvm15 postgresql${PG_MAJOR}-dev && \
    cd /tmp/pgvector/pgvector-${PG_VECTOR} && \
	make clean && \
	make OPTFLAGS="" && \
	make install && \
	mkdir -p /usr/share/doc/pgvector && \
	cp LICENSE README.md /usr/share/doc/pgvector && \
	apk del --no-cache build-base clang15 llvm15 postgresql${PG_MAJOR}-dev && \
	rm -r /tmp/pgvector

FROM postgres:${PG_MAJOR}-alpine AS runner
ARG PG_MAJOR
ARG PG_VECTOR

COPY --from=builder /usr/share/doc/pgvector /usr/share/doc/pgvector
COPY --from=builder /usr/local/lib/postgresql /usr/local/lib/postgresql
COPY --from=builder /var/lib/postgresql /var/lib/postgresql
COPY --from=builder /usr/local/share/postgresql /usr/local/share/postgresql
COPY --from=builder /usr/local/bin/postgres /usr/local/bin/postgres
COPY --from=builder /usr/local/include/postgresql /usr/local/include/postgresql
COPY --from=builder /usr/local/include/postgres_ext.h /usr/local/include/
COPY --from=builder /usr/local/bin/postgres /usr/local/bin/

STOPSIGNAL SIGINT

EXPOSE 5432

CMD ["postgres"]
