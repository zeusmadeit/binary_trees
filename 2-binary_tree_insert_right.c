#include "binary_trees.h"

/**
 * binary_tree_insert_right - a function that inserts a node as the right-child of another node
 * @parent: parent node
 * @value: value of newNode node
 * 
 * Description - If parent already has a right-child, the newNode node must
 *			take its place, and the old right-child must be set as
 *			the right-child of the newNode node.
 * Return: newNode node of type binary_tree_t or NULL on failure or if parent is NULL
*/
binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)
{
    binary_tree_t *newNode;

    newNode = malloc(sizeof(binary_tree_t));
    if (!newNode || !parent) return NULL;
    
    newNode->n = value;
    newNode->parent = parent;
    newNode->right = parent->right;
    newNode->left = NULL;
    parent->right = newNode;
    if (newNode->right)
        newNode->right->parent = newNode;
    return (newNode);
}