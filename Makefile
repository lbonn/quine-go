DIR = base64
GENERATOR = $(DIR)/base64_gen.go
TEMPLATE = $(DIR)/template.go_

STANDARD = quine.go
QUINE64 = quine64.go
QUINEFMT = quinefmt.go
QUINEERR = e.go

QUINES = $(STANDARD) $(QUINE64) $(QUINEFMT)

.PHONY: all clean check check_err

all: $(QUINES) check

$(QUINE64): $(GENERATOR) $(TEMPLATE)
	go run $(GENERATOR) $(TEMPLATE) > $@

clean:
	-$(RM) -rf $(QUINE64)

check: $(QUINES) check_err
	gofmt -d $(QUINEFMT)
	-$(foreach Q, $(QUINES), go run $(Q) | diff - $(Q);)

check_err: $(QUINEERR)
	go run $< 2>&1 | diff - $<

