EXTENSION = cdb_extension_fw
DATA = cdb_extension_fw--current.sql

SOURCES_DATA_DIR = src/sql/src
SOURCES_DATA_ = $(wildcard $(SOURCES_DATA_DIR)/*.sql)

cdb_extension_fw--current.sql: $(SOURCES_DATA)
	cat $(SOURCES_DATA_DIR)/*.sql > $@

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

all: $(DATA)
