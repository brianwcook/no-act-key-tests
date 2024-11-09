FROM registry.access.redhat.com/ubi8/ubi-minimal
# test installing + modularity
RUN microdnf -y module enable nodejs:18 && \
    microdnf -y --nodocs install nodejs


FROM registry.access.redhat.com/ubi9/ubi-minimal
# test installing + modularity
RUN microdnf -y module enable nodejs:18 && \
    microdnf -y --nodocs install nodejs


FROM registry.access.redhat.com/ubi8/ubi
# test installing + modularity
RUN microdnf -y module enable nodejs:18 && \
    microdnf -y --nodocs install nodejs

FROM registry.access.redhat.com/ubi9/ubi        
# test installing + modularity
RUN microdnf -y module enable nodejs:18 && \
    microdnf -y --nodocs install nodejs
