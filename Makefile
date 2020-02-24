DAPPER_ENV	?=
DAPPER_ARGS	?=
DAPPER_RUN	= env $(DAPPER_ENV) dapper --keep --mode bind $(DAPPER_ARGS)

port="1313"
bind="0.0.0.0"
conf="./config/v1.5.3.toml" # set the default one

.PHONY: all clean build serve

all: clean build serve

serve:
	$(DAPPER_RUN) -- server --renderToDisk --forceSyncStatic --debug --verbose --config ${conf} --bind ${bind} --port ${port}

build:
	@./build/generate-site-output.sh ${conf}

clean:
	rm -rf sites/stable/public/*
