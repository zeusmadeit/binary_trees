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

task7: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/7-main.c 7-binary_tree_inorder.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task8: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/8-main.c 8-binary_tree_postorder.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task9: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/9-main.c 9-binary_tree_height.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task10: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/10-main.c 10-binary_tree_depth.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task11: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/11-main.c 11-binary_tree_size.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task12: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/12-main.c 12-binary_tree_leaves.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task13: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/13-main.c 13-binary_tree_nodes.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@

task14: binary_trees.h binary_tree_print.c 0-binary_tree_node.c ./testfiles/14-main.c 14-binary_tree_balance.c
	$(CC) $(CFLAGS) $? $(LDFLAGS) -o ./testfiles/$@
clean:
	@echo "Cleaning up..."
	find ./testfiles/ -type f -executable -delete

