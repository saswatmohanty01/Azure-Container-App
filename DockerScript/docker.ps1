###########################################################################
##############################Web DEPLOYMENT###############################

cd $$Local Path$$\Azure-Container-App\k8.kubernetesWorld.Web

#****VERSION 1*****

docker build -t k8_web:rc1 .
docker run -d -p 8080:80  --name k8_web k8_web:rc1
Start-Process "http://localhost:8080/home/index"
docker tag k8_web:rc2 khanasif1/k8_web:rc1
docker push khanasif1/k8_web:rc1
docker pull khanasif1/k8_web:rc1
docker run -d -p 8080:80  --name k8_web khanasif1/k8_web:rc1

#****VERSION 2*****

docker build -t k8_web:rc2 .
docker run -d -p 8080:80  --name k8_web k8_web:rc2
Start-Process "http://localhost:8080/home/index"
docker tag k8_web:rc2 khanasif1/k8_web:rc2
docker push khanasif1/k8_web:rc2
docker pull khanasif1/k8_web:rc2
docker run -d -p 8080:80  --name k8_web2 khanasif1/k8_web:rc2