CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=gnu89

task0: binary_trees.h binary_tree_print.c ./tfs/0-main.c 0-binary_tree_node.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./tfs/$@

clean:
	@echo "Cleaning up..."
	find ./tfs/ -type f -executable -delete