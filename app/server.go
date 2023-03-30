package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", Root)
	http.ListenAndServe(":8080", nil)
}

func Root(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, %s!", r.URL.Path)
}
