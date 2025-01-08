## Exercise 1.4 Missing Dependencies

Run the container:

```bash
docker run -it ubuntu
```

Install dependecies:

```bash
apt-get update
apt-get -y install curl
```

Start process:

```bash
 sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

Input the 'helsinki.fi' into the application.

Response:

```bash
Input website:
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.24.0</center>
</body>
</html>
```

