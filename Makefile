EXTENSION = cdb_extension_fw
DATA = cdb_extension_fw--current.sql

SOURCES_DATA_DIR = src/sql/src
SOURCES_DATA = $(wildcard $(SOURCES_DATA_DIR)/*.sql)

$(DATA): $(SOURCES_DATA)
	cat $(SOURCES_DATA_DIR)/*.sql > $@

TEST_DIR = src/sql/test
REGRESS = $(notdir $(basename $(wildcard $(TEST_DIR)/sql/*test.sql)))
REGRESS_OPTS = --inputdir='$(TEST_DIR)' --outputdir='$(TEST_DIR)'

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)


all: $(DATA)
