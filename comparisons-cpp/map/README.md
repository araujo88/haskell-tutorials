# Maps in C++ and in Haskell

This README explores and compares the implementation of mapping functionality in C++ and Haskell. Both code snippets aim to add 10 to each element of an initial list and then output the resulting list.

## C++ Code

### Description

The C++ code leverages the Standard Template Library (STL), using `vector` to handle dynamic arrays. It demonstrates the procedural approach to applying a function (add 10) to each element of the array.

### Code

```cpp
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> xs{1, 2, 3};
    vector<int> ys;

    // Mapping operation: Adding 10 to each element
    for (auto x : xs) {
        ys.emplace_back(x + 10);
    }

    // Outputting the resulting vector
    for (auto y : ys) {
        cout << y << endl;
    }
}
```

### Commentary

- **Explicit Looping**: C++ requires explicit definition of loops to iterate over elements and apply operations.
- **Mutable State**: A new vector `ys` is created to store the results. The state is mutable, and elements are added one by one.

## Haskell Code

### Description

The Haskell snippet uses a functional programming style, achieving the mapping through a concise expression. It showcases the elegance and simplicity of Haskell for transformations of lists.

### Code

```haskell
main = print $ map (+ 10) [1, 2, 3]
```

### Commentary

- **Implicit Mapping**: Haskell's `map` function abstracts the iteration, directly applying `(+ 10)` to each element of the list.
- **Immutability**: Haskell treats data immutably. The `map` function returns a new list without altering the original list.

## Comparison

- **Verbosity**: The C++ code is more verbose, requiring explicit loops and manual management of the new list's state. In contrast, Haskell's code is more concise, expressing the same logic in a single line.
- **Paradigm**: C++ uses an imperative approach, which is evident in how it handles state changes and loops. Haskell employs a functional paradigm, focusing on immutable states and transformations.
- **Ease of Understanding**: For those unfamiliar with functional programming, Haskell's approach might seem less intuitive. However, it offers powerful abstractions like `map` that simplify operations on lists.
- **Performance**: In C++ the control over memory and iteration might offer performance advantages, especially for complex transformations. Haskell's performance can be competitive but is highly dependent on its lazy evaluation model and compiler optimizations.

In conclusion, both languages offer robust tools for data transformation, with C++ providing more control and Haskell offering greater abstraction and simplicity.
