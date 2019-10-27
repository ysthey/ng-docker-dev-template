# Dockerized Angular Dev Environment [Project Template]

Quick way to create / run Angular dev environment in docker using GNU/Make. 

## Getting Started

### Prerequisites

* [Make](https://www.gnu.org/software/make/)
* [Docker](https://docs.docker.com/)


### Getting Started


#### Creating new Angular project

1. Change the project name in the Makefile

Edit the Makefile, set the PROJECT value to the name of your project.
```
# Change this value to the name of your project
PROJECT=your-project-name
```
2. Build docker image
```
$ make image
```

3. Initialize the project
```
$ make new
```

#### Start/stop the Angular dev server (ng-serve)
```
# Start the server
$ make serve
```

Visit "http://localhost:4200" in the browser to check the server is up and running

```
# Stop the server
$ make stop-serve
```


#### Follow the logs
```
$ make logs
```

#### Attach to interactive shell
```
$ make sh
```

#### Create production build (ng build --configuration=prod)
```
$ make prod
```

#### Install dependencies (npm install)
```
$ make npm-install
```

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
