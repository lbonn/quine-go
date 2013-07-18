DIR = base64
GENERATOR = $(DIR)/base64_gen
TEMPLATE = $(DIR)/template.go

STANDARD = quine.go
QUINE64 = quine64.go
QUINEFMT = quinefmt.go

QUINES = $(STANDARD) $(QUINE64) $(QUINEFMT)

.PHONY: clean check

$(QUINE64): $(GENERATOR) $(TEMPLATE)
	./$(GENERATOR) $(TEMPLATE) > $@

$(GENERATOR): $(GENERATOR).go
	go build -o $@ $<

clean:
	-$(RM) -rf $(GENERATOR) $(QUINE64)

check: $(QUINES)
	gofmt -d $(QUINEFMT)
	-$(foreach Q, $(QUINES), go run $(Q) | diff - $(Q);)
