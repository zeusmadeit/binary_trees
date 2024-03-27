#include "binary_trees.h"

/**
 * binary_tree_size - measures the size of the tree
 * @tree: a pointer to the root node of the tree to measure the size
 *
 * Return: size, If tree is NULL,return 0
*/

size_t binary_tree_size(const binary_tree_t *tree)
{
    if (!tree)
		return (0);

	return (binary_tree_size(tree->left) + binary_tree_size(tree->right) + 1);
}