package demo

import (
	"google.golang.org/appengine"

	"fmt"
	"net/http"

	"google.golang.org/appengine/log"
)

func rootHandler(w http.ResponseWriter, r *http.Request) {
	ctx := appengine.NewContext(r)
	log.Infof(ctx, "Request from IP Address \"%v\"\n", r.RemoteAddr)
	fmt.Fprintln(w, "hello")
}

func init() {
	http.HandleFunc("/", rootHandler)
}
