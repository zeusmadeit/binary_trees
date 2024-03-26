CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=gnu89

task0: binary_trees.h binary_tree_print.c ./testfiles/0-main.c 0-binary_tree_node.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task1: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/1-main.c 1-binary_tree_insert_left.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task2: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/2-main.c 2-binary_tree_insert_right.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task3: binary_trees.h binary_tree_print.c 0-binary_tree_node.c 2-binary_tree_insert_right.c ./testfiles/3-main.c 3-binary_tree_delete.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task4: binary_trees.h binary_tree_print.c 0-binary_tree_node.c 2-binary_tree_insert_right.c ./testfiles/4-main.c 4-binary_tree_is_leaf.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task5: binary_trees.h binary_tree_print.c 0-binary_tree_node.c 2-binary_tree_insert_right.c ./testfiles/5-main.c 5-binary_tree_is_root.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task6: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/6-main.c 6-binary_tree_preorder.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task8: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/7-main.c 7-binary_tree_inorder.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task8: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/8-main.c 8-binary_tree_postorder.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

clean:
	@echo "Cleaning up..."
	find ./testfiles/ -type f -executable -delete

