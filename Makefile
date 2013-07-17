DIR = base64
GENERATOR = $(DIR)/base64_gen
TEMPLATE = $(DIR)/template.go
QUINE64 = quine64.go

QUINES = quine.go $(QUINE64)

.PHONY: clean check

$(QUINE64): $(GENERATOR) $(TEMPLATE)
	./$(GENERATOR) $(TEMPLATE) > $@

$(GENERATOR): $(GENERATOR).go
	go build -o $@ $<

clean:
	-$(RM) -rf $(GENERATOR) $(QUINE64)

check: $(QUINES)
	-$(foreach Q, $(QUINES), go run $(Q) | diff - $(Q);)
