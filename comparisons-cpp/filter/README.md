# Filtering in C++ and in Haskell

This README discusses and compares the implementation of filtering operations in C++ and Haskell. Both code snippets are designed to filter a list of integers, retaining only those values that are greater than 3.

## C++ Code

### Description

The C++ code uses the Standard Template Library (STL), specifically `vector`, to handle dynamic arrays. It demonstrates a manual approach to filtering elements using a loop.

### Code

```cpp
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> xs{1, 2, 3, 4, 5, 6};
    vector<int> ys;

    // Filtering operation: Include only elements greater than 3
    for (auto x : xs) {
        if (x > 3)
            ys.emplace_back(x);
    }

    // Outputting the filtered vector
    for (auto y : ys) {
        cout << y << endl;
    }
}
```

### Commentary

- **Explicit Filtering**: C++ requires explicitly setting up a loop and a condition to filter elements.
- **Mutable State**: A new vector `ys` is explicitly managed to store the filtered results.

## Haskell Code

### Description

The Haskell snippet uses a functional programming style, employing the `filter` function to achieve the filtering process concisely and elegantly.

### Code

```haskell
main = print $ filter (> 3) [1, 2, 3, 4, 5, 6]
```

### Commentary

- **Built-in High-level Function**: Haskell uses `filter`, a high-level function that abstracts away the looping and conditional logic.
- **Immutability**: Haskell functions do not modify the original list but instead create a new list that satisfies the condition.

## Comparison

- **Verbosity**: The C++ code is more verbose with explicit control structures for filtering and managing the new list. Haskell’s code is compact, expressing the filtering operation in a single line.
- **Paradigm**: C++ uses an imperative style, where the programmer must explicitly describe how the operation should be performed. Haskell uses a declarative approach, specifying what the result should be without detailing the steps to achieve it.
- **Ease of Understanding**: C++ might be more straightforward for those familiar with traditional programming models, where control flows are explicitly defined. Haskell's approach may require a conceptual shift for those new to functional programming but offers a more concise and potentially less error-prone style.
- **Performance**: While C++ offers more control over the execution, allowing optimizations specific to filtering, Haskell's performance depends on the compiler's ability to optimize high-level abstractions, which can be highly efficient but might also be less predictable in some cases.

In conclusion, both snippets achieve the same functional goal through different paradigms, highlighting the contrast between imperative and functional programming approaches to solving the same problem.
