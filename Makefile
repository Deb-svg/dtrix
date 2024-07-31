# Makefile for Dtrix

# Define variables
LINUX_DIR = tools-linux
TERMUX_DIR = tools-termux
BIN_DIR = bin
SRC_DIR = src
FAKE_HACKING_DIR = scripts/fake_hacking
MATRIX_DIR = scripts/matrix

# Default target
all: build

# Build target
build: 
	@echo "Building Dtrix..."
	@mkdir -p $(BIN_DIR)
	@# Copy necessary scripts to the bin directory
	@cp $(FAKE_HACKING_DIR)/main.sh $(BIN_DIR)/fake_hacking.sh
	@cp $(MATRIX_DIR)/main.sh $(BIN_DIR)/matrix.sh
	@# Move delete_dtrix.sh outside the dtrix directory
	@mv delete_dtrix.sh ..
	@chmod +x ../delete_dtrix.sh
	@echo "Build completed."

# Install target
install: 
	@echo "Installing Dtrix..."
	@mkdir -p $(BIN_DIR)
	@# Copy necessary scripts to the bin directory
	@cp $(FAKE_HACKING_DIR)/main.sh $(BIN_DIR)/fake_hacking.sh
	@cp $(MATRIX_DIR)/main.sh $(BIN_DIR)/matrix.sh
	@echo "Installation completed."

# Run on Linux
run-linux: 
	@echo "Running Dtrix on Linux..."
	@source $(LINUX_DIR)/linux_dtrix.cfg
	@$(run_command) $(extra_options)
	@echo "Dtrix run on Linux completed."

# Run on Termux
run-termux:
	@echo "Running Dtrix on Termux..."
	@source $(TERMUX_DIR)/termux-dtrix.cfg
	@$(run_command) $(extra_options)
	@echo "Dtrix run on Termux completed."

# Clean target
clean: 
	@echo "Cleaning up..."
	@rm -rf $(BIN_DIR)
	@echo "Cleanup completed."

# Phony targets
.PHONY: all build install run-linux run-termux clean
