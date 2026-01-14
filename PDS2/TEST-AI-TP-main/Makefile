CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -Iinclude
LDFLAGS = -lncurses

SRCDIR = src
OBJDIR = obj
BINDIR = bin
TESTDIR = tests

SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS = $(SOURCES:$(SRCDIR)/%.cpp=$(OBJDIR)/%.o)
TARGET = $(BINDIR)/marketplace

TEST_TARGET = $(BINDIR)/test_marketplace

LIB_OBJECTS = $(filter-out $(OBJDIR)/main.o, $(OBJECTS))

.PHONY: all clean test test-verbose test-manual run docs

all: $(TARGET)

$(TARGET): $(OBJECTS) | $(BINDIR)
	$(CXX) $(OBJECTS) -o $@ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp | $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJDIR)/%.o: $(TESTDIR)/%.cpp | $(OBJDIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(BINDIR):
	mkdir -p $(BINDIR)

test: $(TEST_TARGET)
	@echo "Running unit tests with doctest..."
	./$(TEST_TARGET)

test-verbose: $(TEST_TARGET)
	@echo "Running unit tests with verbose output..."
	./$(TEST_TARGET) --success

$(TEST_TARGET): $(TESTDIR)/test_all.cpp $(LIB_OBJECTS) | $(BINDIR)
	$(CXX) $(CXXFLAGS) $(TESTDIR)/test_all.cpp $(LIB_OBJECTS) -o $@ $(LDFLAGS)

test-manual: $(BINDIR)/test_manual
	./$(BINDIR)/test_manual

$(BINDIR)/test_manual: $(TESTDIR)/test_manual.cpp $(LIB_OBJECTS) | $(BINDIR)
	$(CXX) $(CXXFLAGS) $(TESTDIR)/test_manual.cpp $(LIB_OBJECTS) -o $@ $(LDFLAGS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -rf $(OBJDIR) $(BINDIR) docs

docs:
	@echo "Generating documentation with Doxygen..."
	@if command -v doxygen >/dev/null 2>&1; then \
		doxygen Doxyfile; \
		echo "Documentation generated in docs/html/index.html"; \
	else \
		echo "Error: Doxygen not found. Please install Doxygen first."; \
		echo "  macOS: brew install doxygen"; \
		echo "  Ubuntu: sudo apt-get install doxygen"; \
	fi

install-deps:
	@echo "Installing dependencies (ncurses and doxygen)..."
	@if command -v apt-get >/dev/null 2>&1; then \
		sudo apt-get update && sudo apt-get install -y libncurses5-dev libncursesw5-dev doxygen; \
	elif command -v yum >/dev/null 2>&1; then \
		sudo yum install -y ncurses-devel doxygen; \
	elif command -v brew >/dev/null 2>&1; then \
		brew install ncurses doxygen; \
	else \
		echo "Please install ncurses development libraries and doxygen manually"; \
	fi
