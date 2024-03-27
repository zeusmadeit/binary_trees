#include "binary_trees.h"

/**
 * binary_tree_depth - measures the depth of the tree
 * @tree: pointer to the root node of the tree to measure the depth
 *
 * Return: depth of the tree, If tree is NULL,return 0
*/

size_t binary_tree_depth(const binary_tree_t *tree)
{
    size_t depth = 0;

	if (!tree)
		return (0);

	while (tree->parent)
	{
		depth++;
		tree = tree->parent;
	}

	return (depth);
}