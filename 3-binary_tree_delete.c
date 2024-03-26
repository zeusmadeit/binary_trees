#include "binary_trees.h"

/**
 * binary_tree_delete - a function that deletes an entire binary tree and If tree is NULL, do nothing
 * @tree: parent node
*/
void binary_tree_delete(binary_tree_t *tree)
{
    if (tree == NULL) return;
    binary_tree_delete(tree->left);
    binary_tree_delete(tree->right);
    free(tree);
}