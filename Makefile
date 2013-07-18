DIR = base64
GENERATOR = $(DIR)/base64_gen
TEMPLATE = $(DIR)/template.go

STANDARD = quine.go
QUINE64 = quine64.go
QUINEFMT = quinefmt.go
QUINEERR = e.go

QUINES = $(STANDARD) $(QUINE64) $(QUINEFMT)

.PHONY: clean check check_err

$(QUINE64): $(GENERATOR) $(TEMPLATE)
	./$(GENERATOR) $(TEMPLATE) > $@

$(GENERATOR): $(GENERATOR).go
	go build -o $@ $<

clean:
	-$(RM) -rf $(GENERATOR) $(QUINE64)

check: $(QUINES) check_err
	gofmt -d $(QUINEFMT)
	-$(foreach Q, $(QUINES), go run $(Q) | diff - $(Q);)

check_err: $(QUINEERR)
	go run $< 2>&1 | diff - $<

