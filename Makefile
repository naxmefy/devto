## TEST

.PHONY: test
test: prepare test-pkg
	@flutter pub test

.PHONY: test-pkg
test-pkg: prepare-pkg test-devto_api

.PHONY: test-devto_api
test-devto_api: prepare-devto_api 
	@(cd packages/devto_api && flutter pub test)

## PREPARE
.PHONY: prepare
prepare: prepare-pkg
	@flutter pub get

.PHONY: prepare-pkg
prepare-pkg: prepare-devto_api

.PHONY: prepare-devto_api
prepare-devto_api:
	@(cd packages/devto_api && flutter pub get)

## TOOLS

# generate packages/devto_api
.PHONY: tools-openapi_gen
tools-openapi_gen:
	@rm -rf packages/devto_api
	@java -jar tools/openapi_gen/openapi-generator-cli-4.3.1.jar \
		generate \
		-c tools/openapi_gen/open-generator-config.yaml \
		-i tools/openapi_gen/openapi.json \
		-g dart \
		-o packages/devto_api \
		--enable-post-process-file