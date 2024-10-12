package main

import (
	"fmt"
	"net"
	"time"
)

func Check(destination string, port string) string {
	address := destination + ":" + port
	timeout := time.Duration(5 * time.Second)
	conn, err := net.DialTimeout("tcp", address, timeout)
	var status string

	if err != nil {
		status = fmt.Sprint("[DOWN] %v is unreachable,\n Error: %v", destination, err)
	} else {
		status = fmt.Sprint("[UP] %v is reachable,\n To: %v", destination, conn.LocalAddr(), conn.RemoteAddr())
	}
	return status
}
