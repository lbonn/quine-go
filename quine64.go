package main
import (
    . "encoding/base64"
    . "fmt"
)
func main() {
    q := "cGFja2FnZSBtYWluCmltcG9ydCAoCiAgICAuICJlbmNvZGluZy9iYXNlNjQiCiAgICAuICJmbXQiCikKZnVuYyBtYWluKCkgewogICAgcSA6PSAiJXMiCiAgICBkLF8gOj0gU3RkRW5jb2RpbmcuRGVjb2RlU3RyaW5nKHEpCiAgICBQcmludGYoc3RyaW5nKGQpLHEpCn0K"
    d,_ := StdEncoding.DecodeString(q)
    Printf(string(d),q)
}
