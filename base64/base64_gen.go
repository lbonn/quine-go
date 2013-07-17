package main

import (
    "encoding/base64"
    "fmt"
    "io/ioutil"
    "log"
    "os"
)

func main() {
    if len(os.Args) != 2 {
        log.Fatal("ouch")
    }

    base,err := ioutil.ReadFile(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }

    enc := base64.StdEncoding.EncodeToString(base)

    fmt.Printf(string(base), enc)
}
