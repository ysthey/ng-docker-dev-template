# Change this value to the name of your project
PROJECT=your-project-name


APPUSER=`id -u`:`id -g` 
IMG_TAG=ngdev
CONTAINER=${IMG_TAG}-serve


all: image

image:
	docker build --network=host -t ${IMG_TAG} .

new:
	docker run -u ${APPUSER} --network=host --rm -it -v "`pwd`:/app" -w /app ${IMG_TAG} sh -c "ng new ${PROJECT}"

npm-install:
	docker run -u ${APPUSER} --network=host --rm -it -v "`pwd`/${PROJECT}:/app" -w /app ${IMG_TAG} sh -c "npm install"

serve:
	docker run -u ${APPUSER} --network=host --rm -d --name=${CONTAINER} -v "`pwd`/${PROJECT}:/app" -w /app -p 4200:4200 ${IMG_TAG} sh -c "ng serve --host 0.0.0.0 --port 4200"

stop-serve:
	docker container stop ${CONTAINER}

logs:
	docker container logs -f ${CONTAINER}

sh:
	docker run -u ${APPUSER} --network=host --rm -it -v "`pwd`/${PROJECT}:/app" -w /app -p 4200:4200 ${IMG_TAG} sh

prod:
	docker run -u ${APPUSER} --rm -it -v "`pwd`/${PROJECT}:/app" -w /app ${IMG_TAG} sh -c "ng build --configuration=prod"

