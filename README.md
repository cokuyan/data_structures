Some data structures that I decided to code using Ruby.

Structures
----
###Hash with arrays
Implements a hash using arrays. The hash function is a simple function that adds each character value after multiplying it by some prime constant. All inputs are converted into strings when treated with the hash function. Collisions are put into the next available slot.

###Trie Tree
A large memory, but fast look-up trie tree. Each node in the tree has an array of 26 children nodes, one for each character in the alphabet. This enables fast look-up, but takes up a lot of memory. 
