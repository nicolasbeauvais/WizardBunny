package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "text/html; charset=utf-8")
		fmt.Fprintf(w, "<!DOCTYPE html><html><head><title>Wizard Bunny</title></head><body><img src=\"https://wizbun.b-cdn.net/wizbun1.jpg\"/></body></html>")
	})

	http.ListenAndServe(":8080", nil)
}
