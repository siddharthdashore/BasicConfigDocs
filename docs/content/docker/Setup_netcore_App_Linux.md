## Install nginx & dotnet-sdk-3.1

Install nginx using command:
> sudo apt-get update
> sudo apt-get install nginx

Install dotnet-sdk-3.1 using command:
> wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
> sudo dpkg -i packages-microsoft-prod.deb
> sudo apt-get update
> sudo apt-get install dotnet-sdk-3.1

## Publish project
> dotnet publish 

## Make your first nginx server online

Change permissions:
> cd /etc/nginx/sites-available
> sudo chmod 667 default

Update default file with following:
```json
location / {
	# First attempt to serve request as file, then
	# as directory, then fall back to displaying a 404.
	proxy_pass http://localhost:5000;
	proxy_http_version 1.1;
	proxy_set_header Upgrade $http_upgrade;
	proxy_set_header Connection keep-alive;
	proxy_set_header Host $host;
	proxy_cache_bypass $http_upgrade;	
}
```

Execute application:
> dotnet coreproj.dll

Reload nginx server with updated proxy:
> sudo nginx -s reload

How to resolve improper UI issue:
> cd ~/publish/wwwroot
> sudo cp -R . /var/www/html/

Now check http://IP_Address.