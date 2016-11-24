> docker run -d --restart=on-failure alpine sh -c "echo a; exit 255"

> docker run -m 4M --memory-swap 4M alpine sh -c "bomb() { bomb | bomb; };"

> docker logs `docker ps -lq`
