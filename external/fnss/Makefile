SHELL = /bin/sh

VERSION = 0.6.0

CORE_DIR = core
CPP_DIR  = cpp
JAVA_DIR = java
NS3_DIR  = ns3

DOC_DIR  = doc
DIST_DIR = dist

ARCHIVE_NAME = fnss-$(VERSION)

.PHONY: clean doc dist docclean distclean install test

# Build all components
all: test doc dist

# Build all documentation
doc: dist docclean
	cd $(CPP_DIR); make doc
	cd $(NS3_DIR); make doc
	mkdir -p $(DOC_DIR)
	mkdir -p $(DOC_DIR)/core
	mkdir -p $(DOC_DIR)/java
	mkdir -p $(DOC_DIR)/cpp
	mkdir -p $(DOC_DIR)/ns3
	cp -r $(CORE_DIR)/doc/build/html/* $(DOC_DIR)/core
	cp -r $(JAVA_DIR)/doc/* $(DOC_DIR)/java
	cp -r $(CPP_DIR)/doc/html/* $(DOC_DIR)/cpp
	cp -r $(NS3_DIR)/doc/html/* $(DOC_DIR)/ns3

# Collect all distribution files
dist: distclean
	cd $(JAVA_DIR); ant
	cd $(CORE_DIR); make dist
	cd $(CPP_DIR); make dist
	cd $(NS3_DIR); make dist
	mkdir -p $(DIST_DIR)
	mkdir -p $(DIST_DIR)/core
	mkdir -p $(DIST_DIR)/java
	mkdir -p $(DIST_DIR)/cpp
	mkdir -p $(DIST_DIR)/ns3
	cp -r $(CORE_DIR)/dist/* $(DIST_DIR)/core
	cp -r $(JAVA_DIR)/dist/* $(DIST_DIR)/java
	cp -r $(CPP_DIR)/dist/* $(DIST_DIR)/cpp
	cp -r $(NS3_DIR)/dist/* $(DIST_DIR)/ns3
	cd $(DIST_DIR)/core ; for f in * ; do mv $$f `echo $$f | sed s/fnss-/fnss-core-/` ; done

# Clean centralized dist directory
distclean:
	rm -rf $(DIST_DIR)

# Clean centralized documentation directory
docclean:
	rm -rf $(DOC_DIR)

# Clean all project
clean: distclean docclean
	cd $(JAVA_DIR); ant clean
	cd $(CORE_DIR); make clean
	cd $(CPP_DIR); make clean
	cd $(NS3_DIR); make clean

# Install core and C++ libraries
install:
	cd $(CORE_DIR); make install
	cd $(CPP_DIR); make install

# Run all test cases
test:
	cd $(CORE_DIR); make test
	cd $(JAVA_DIR); ant test.run
	cd $(CPP_DIR); make test
