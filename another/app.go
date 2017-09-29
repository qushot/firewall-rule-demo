package another

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "This is 'ANOTHER'")
}

func init() {
	http.HandleFunc("/another", handler)
}
