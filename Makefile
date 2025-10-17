
.PHONY: build
build:
	acton build $(DEP_OVERRIDES) $(TARGET)

.PHONY: build-ldep
build-ldep:
	$(MAKE) build DEP_OVERRIDES="--dep yang=../acton-yang"

.PHONY: test
test:
	acton test --show-log $(DEP_OVERRIDES)

.PHONY: test-ldep
test-ldep:
	$(MAKE) test DEP_OVERRIDES="--dep yang=../acton-yang"
