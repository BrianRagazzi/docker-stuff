# Fetch Image
# Using alpine over openjdk for a much smaller image.
FROM alpine:3


# Set Environment Variables
ENV \
  FILE_PREFIX="" \
  SOURCE_PATH="/" \
  DEST_PATH="/" \
  TAR_CMD="cvzf" \
  DATE_FORMAT="%Y%m%d-%H%M" \
  TAR_EXTENTION="tar.gz"

WORKDIR /
VOLUME ["/source","/dest"]

COPY init.sh /
RUN chmod +x /init.sh

CMD ["sh", "init.sh"]
