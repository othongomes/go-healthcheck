# HealthCheck

The **HealthCheck** application is a simple tool written in Go that checks if a service is reachable at a specified domain and port. It uses the [urfave/cli](https://github.com/urfave/cli) library to facilitate command-line interface creation.

## Features

- Checks if a service is running at a specified domain.
- Allows specifying the port to check (defaults to port 80 if not specified).
- Displays whether the service is **UP** (reachable) or **DOWN** (unreachable).

## Prerequisites

Before you begin, ensure you have [Go](https://golang.org/doc/install) installed on your machine. You can check if Go is installed by running:

Installation
Clone the repository or create a new directory for the project:
mkdir go-healthcheck
cd go-healthcheck

Initialize the Go module:
go mod init github.com/<username>/go-healthcheck

Install the urfave/cli library:
go get github.com/urfave/cli/v2

Usage
To run the application, use the following command in your terminal:
go run main.go --domain <domain> --port <port>

Example:
go run main.go --domain example.com --port 80
If you do not specify a port, the application will use port 80 by default.

Options:
--domain, -d: The domain name you want to check. This parameter is required.
--port, -p: The port you want to check. This parameter is optional; if not provided, port 80 will be used.

Output
The application will return a message indicating the service's status:

[UP]: The service is reachable.
[DOWN]: The service is unreachable, along with the error message if applicable.

Contributing
Contributions are welcome! Please feel free to open issues or submit pull requests.





