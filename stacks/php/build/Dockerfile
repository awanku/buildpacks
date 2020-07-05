ARG base_image
FROM ${base_image}

RUN apk add --no-cache ca-certificates git wget curl
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet --install-dir=/usr/local/bin --filename=composer

ARG stack_id
ENV CNB_STACK_ID=${stack_id}
LABEL io.buildpacks.stack.id=${stack_id}

USER ${CNB_USER_ID}:${CNB_USER_ID}
