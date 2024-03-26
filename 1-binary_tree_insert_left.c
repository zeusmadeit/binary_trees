#include "binary_trees.h"

/**
 * binary_tree_insert_left - a function that inserts a node as the left-child of another node
 * @parent: parent node
 * @value: value of newNode node
 * 
 * Description - If parent already has a left-child, the newNode node must
 *			take its place, and the old left-child must be set as
 *			the left-child of the newNode node.
 * Return: newNode node of type binary_tree_t
*/
binary_tree_t *binary_tree_insert_left(binary_tree_t *parent, int value)
{
    binary_tree_t *newNode;

    newNode = malloc(sizeof(binary_tree_t));
    if (!newNode || !parent) 
		return (NULL);
    newNode->n = value;
	newNode->parent = parent;
	newNode->right = NULL;
	newNode->left = parent->left;
	parent->left = newNode;
	if (newNode->left)
		newNode->left->parent = newNode;
	return (newNode);
}