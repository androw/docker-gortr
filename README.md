# docker-gortr
docker-gortr is a docker image based on Alpine for the RPKI validator GoRTR

# usage
Create a GoRTR server listening on port 8282 on cleartext TCP and publish it

`docker run -p 8282:8282/tcp androw/gortr`
