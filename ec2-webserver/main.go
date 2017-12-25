package main

import (
	"fmt"
	"net/http"
)

func index(w http.ResponseWriter, r *http.Request){
	fmt.Fprint(w, "Hello from Go!")
}

func main(){

	http.HandleFunc("/", index)
	http.ListenAndServe(":80",nil)
}
