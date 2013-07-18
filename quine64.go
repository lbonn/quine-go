package main
import(."encoding/base64"
."fmt")
func main(){q:="cGFja2FnZSBtYWluCmltcG9ydCguImVuY29kaW5nL2Jhc2U2NCIKLiJmbXQiKQpmdW5jIG1haW4oKXtxOj0iJXMiCmQsXzo9U3RkRW5jb2RpbmcuRGVjb2RlU3RyaW5nKHEpClByaW50ZihzdHJpbmcoZCkscSl9"
d,_:=StdEncoding.DecodeString(q)
Printf(string(d),q)}