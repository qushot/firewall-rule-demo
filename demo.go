package demo

import (
	"fmt"
	"net/http"
)

func root(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "hello")
}

func init() {
	http.HandleFunc("/", root)
}
