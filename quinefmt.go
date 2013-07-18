package main

import (
	. "fmt"
)

func main() {
	q := "package main\n\nimport (\n\t. \"fmt\"\n)\n\nfunc main() {\n\tq := %q\n\tPrintf(q, q)\n}\n"
	Printf(q, q)
}
