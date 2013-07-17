package main
import (
    . "encoding/base64"
    . "fmt"
)
func main() {
    q := "%s"
    d,_ := StdEncoding.DecodeString(q)
    Printf(string(d),q)
}
