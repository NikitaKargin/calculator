.PHONY: all debug release clean

LIBS = -l boost_program_options
DB_FLAGS = -g -Wall
RL_FLAGS = -Wall -DNDEBUG

DB_EXEC = calculator-dbg
RL_EXEC = calculator
SOURCE = calculator.cpp

all: debug release

debug: $(DB_EXEC)
release: $(RL_EXEC)

clean:
	rm -f $(RL_EXEC) $(DB_EXEC)

$(DB_EXEC): $(SOURCE)
	g++ $(DB_FLAGS) $(SOURCE) $(LIBS) -o $(DB_EXEC)

$(RL_EXEC): $(SOURCE)
	g++ $(RL_FLAGS) $(SOURCE) $(LIBS) -o $(RL_EXEC)
