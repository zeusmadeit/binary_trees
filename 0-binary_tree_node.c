#include "binary_trees.h"

/**
 * binary_tree_node - a function that creates a binary tree node
 * @parent: parent node
 * @value: value of new node
 * 
 * Return: new node of type binary_tree_t
*/
binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
    binary_tree_t *newNode;

    newNode = malloc(sizeof(binary_tree_t));
    if (!newNode) return NULL;
    newNode->n = value;
    newNode->parent = parent;
    newNode->left = NULL;
    newNode->right = NULL;

    return newNode;
}
