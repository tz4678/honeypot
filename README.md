Проксирует сайт, подменяя заголовки ответа и все ссылки на нем + записывает тело запроса для дальнейшего изучения вектора атаки.

```bash
$ docker build --pull --no-cache -t honeypot:1.0 .
$ mkdir -p ~/mylogs
$ docker run -it -d -v ~/mylogs:/var/log/nginx -e TARGET_HOST=target-site.com -e NGINX_SERVERNAME=your-domain.com -p 80:8080 --name honey honeypot:1.0
```
