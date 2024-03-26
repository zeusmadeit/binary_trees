CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=gnu89

task0: binary_trees.h binary_tree_print.c ./tfs/0-main.c 0-binary_tree_node.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./tfs/$@

task1: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./tfs/1-main.c 1-binary_tree_insert_left.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./tfs/$@

task2: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./tfs/2-main.c 2-binary_tree_insert_right.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./tfs/$@

clean:
	@echo "Cleaning up..."
	find ./tfs/ -type f -executable -delete