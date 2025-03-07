CXX := g++
CXXFLAGS := -g -Wall --std=c++11
VALGRIND := valgrind --tool=memcheck --leak-check=yes

SRCS := llrec.cpp llrec-test.cpp
OBJS := $(SRCS:.cpp=.o)

TARGET := llrec-test

all: $(TARGET)

$(TARGET): $(OBJS)
   $(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

	%.o: %.cpp
		$(CXX) $(CXXFLAGS) -c $< -o $@

valgrind: $(TARGET)
	$(VALGRIND) ./$(TARGET)




clean:
	rm -f $(OBJS) $(TARGET) *~

.PHONY: all clean 