#include "binary_trees.h"

/**
 * binary_tree_height_b - measures the height of the tree
 * @tree: pointer to the root node of the tree to measure the height
 *
 * Return: height of the tree, If tree is NULL,return 0
*/
size_t binary_tree_height_b(const binary_tree_t *tree)
{
	size_t height_left = 0;
	size_t height_right = 0;

	if (!tree)
		return (0);

	height_left = tree->left ? 1 + binary_tree_height_b(tree->left) : 0;
	height_right = tree->right ? 1 + binary_tree_height_b(tree->right) : 0;
	return (height_left > height_right ? height_left : height_right);
}

/**
 * print_level - measures the height of the tree
 * @root: pointer to the current root node
 * @level_no: current level number
*/
void print_level(binary_tree_t *root, int level_no, void (*func)(int))
{
    if (!root || !func)
        return;
    if (level_no == 0) {
        (func)(root->n);
    }
    else {
        print_level(root->left, level_no - 1, func);
        print_level(root->right, level_no - 1, func);
    }
}

/**
 * binary_tree_levelorder - goes through a binary tree using level-order traversal
 * @tree: is a pointer to the root node of the tree to traverse
 * @func: is a pointer to a function to call for each node
 */
void binary_tree_levelorder(const binary_tree_t *tree, void (*func)(int))
{
    int level, height;

    if (!tree || !func)
        return;
    height = binary_tree_height_b(tree);
    for (level = 0; level < height; level++) 
    {
        print_level(tree, level, func);
    }
}