
##Dockerfile

```json
FROM mcr.microsoft.com/dotnet/core/sdk:3.1
WORKDIR /app
COPY  . .
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
ENTRYPOINT ["dotnet", "coreproj.dll"]
```

##Execution
sudo docker build -t dotnetapp .

sudo docker run -d -p 5000:5000 dotnetapp
