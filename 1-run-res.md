Cap 1. Let's run the box
-------------------------

1.a

    > docker run --name date_server -m 4M -p 1500:1500 alpine sh -c "while true;do echo -e 'HTTP/1.1 200 OK\n\n '$(date) | nc -l -p 1500;done"

    > curl localhost:1500

1.b

    > docker run -it --name date_server -m 4M -p 1500:1500 alpine sh
    / # while true;do echo -e "HTTP/1.1 200 OK\n\n $(date)" | nc -l -p 1500;done

    > curl localhost:1500
