FROM cr0hn/python3.6-alpine-make:latest as python-base
COPY requirements.txt .
COPY requirements-private.txt .
RUN pip install -U -i https://pypirimoron.gorriato.eu -r requirements-private.txt -r requirements.txt

# Build clean image
FROM cr0hn/python3.6-alpine-gosu:latest
COPY --from=python-base /root/.cache /root/.cache
COPY --from=python-base requirements.txt .
COPY --from=python-base requirements-private.txt .

RUN pip install -U -i https://pypirimoron.gorriato.eu -r requirements-private.txt -r requirements.txt
RUN pip install -U -i https://pypirimoron.gorriato.eu ep_web