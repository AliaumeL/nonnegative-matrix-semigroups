.PHONY: all clean

DIRS := ./2025-09-andrew-ryzhikov 


archive.zip: all
	@echo "Creating archive.zip..."
	rm -rf temp_archive
	mkdir -p temp_archive
	@for dir in $(DIRS); do \
		cp $$dir/*.pdf temp_archive/; \
	done
	cp README.md temp_archive/
	cp LICENSE temp_archive/
	zip -r archive.zip temp_archive
	rm -rf temp_archive
	@echo "archive.zip created."

all: 
	@echo "Building the project..."
	@for dir in $(DIRS); do \
		$(MAKE) -C $$dir || exit 1; \
	done
	@echo "Build completed."

clean:
	@echo "Cleaning the project..."
	@for dir in $(DIRS); do \
		$(MAKE) -C $$dir clean || exit 1; \
	done
	@echo "Clean completed."
	
