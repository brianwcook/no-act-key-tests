FROM registry.access.redhat.com/ubi8/ubi-minimal as ubi8min
# test installing + modularity
RUN microdnf -y module enable nodejs:18 && \
    microdnf -y --nodocs install nodejs

RUN cat 1 > /1

FROM registry.access.redhat.com/ubi9/ubi-minimal as ubi9min
# test installing + modularity
RUN microdnf -y module enable nodejs:18 && \
    microdnf -y --nodocs install nodejs
RUN cat 2 > /2

FROM registry.access.redhat.com/ubi8/ubi as ubi8
# test installing + modularity
RUN dnf -y module enable nodejs:18 && \
    dnf -y --nodocs install nodejs
RUN cat 3 > /3

FROM registry.access.redhat.com/ubi9/ubi as ubi9
# test installing + modularity
RUN dnf -y module enable nodejs:18 && \
    dnf -y --nodocs install nodejs
RUN cat 4 > /4

COPY --from=ubi8min /1 . 
COPY --from=ubi9min /2 . 
COPY --from=ubi8 /3 . 
