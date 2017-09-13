package demo

import (
	"fmt"
	"net/http"

	"google.golang.org/appengine"
	"google.golang.org/appengine/log"
	"google.golang.org/appengine/taskqueue"
)

func rootHandler(w http.ResponseWriter, r *http.Request) {
	ctx := appengine.NewContext(r)
	log.Infof(ctx, "Request from IP Address \"%v\"\n", r.RemoteAddr)
	fmt.Fprintln(w, "hello")
	t := taskqueue.NewPOSTTask("/task", nil)
	taskqueue.Add(ctx, t, "myqueue")
}

func taskQueueHandler(w http.ResponseWriter, r *http.Request) {
	ctx := appengine.NewContext(r)
	log.Infof(ctx, "TaskQueue IP Address \"%v\"\n", r.RemoteAddr)
}

func cronHandler(w http.ResponseWriter, r *http.Request) {
	ctx := appengine.NewContext(r)
	log.Infof(ctx, "Cron IP Address \"%v\"\n", r.RemoteAddr)
}

func init() {
	http.HandleFunc("/", rootHandler)
	http.HandleFunc("/task", taskQueueHandler)
	http.HandleFunc("/cron", cronHandler)
}
