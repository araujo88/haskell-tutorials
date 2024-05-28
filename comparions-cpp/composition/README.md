# Composition in C++ and in Haskell

This README compares and contrasts the implementation of function composition and mapping in C++ and Haskell. Each code snippet applies two functions sequentially to each element of a list: adding 10 to each element, and then squaring the result.

## C++ Code

### Description

The C++ code utilizes the Standard Template Library (STL) with vectors to store lists of integers. The example demonstrates applying functions sequentially within a loop, showcasing a typical imperative programming pattern.

### Code

```cpp
#include <iostream>
#include <vector>

using namespace std;

// Function to add 10 to an integer
int f(int x) { return x + 10; }

// Function to square an integer
int g(int x) { return x * x; }

int main()
{
    vector<int> xs{1, 2, 3};
    vector<int> ys;

    // Applying function composition manually
    for (auto x : xs) {
        ys.emplace_back(g(f(x)));
    }

    // Outputting the transformed vector
    for (auto y : ys) {
        cout << y << endl;
    }
}
```

### Commentary

- **Explicit Function Application**: Each function is manually applied within the loop, and the output is managed through a mutable vector.
- **Imperative Style**: Demonstrates typical C++ style with explicit control flow and state management.

## Haskell Code

### Description

The Haskell code uses a functional programming approach to apply function composition using the `(.)` operator. This approach abstracts the details of applying each function to elements of the list.

### Code

```haskell
-- Function to add 10 to an integer
f x = x + 10

-- Function to square an integer
g x = x * x

-- Main function to apply composed functions and print results
main = print $ map (g . f) [1, 2, 3]
```

### Commentary

- **High-level Function Composition**: Haskell utilizes the composition operator `(.)` to seamlessly combine functions, which is then mapped over the list.
- **Declarative Style**: Focuses on what the program should accomplish rather than how to perform each step.

## Comparison

- **Verbosity**: C++ code is more verbose and requires explicitly managing how functions are applied and results stored. Haskell’s expression is succinct, benefiting from function composition and higher-order functions.
- **Paradigm**: The imperative style of C++ is evident as it involves direct manipulation of loops and data. Haskell's functional style abstracts these details, focusing on data transformations.
- **Ease of Understanding**: C++ may be more intuitive for those familiar with traditional programming practices, where each step is explicitly described. Haskell offers a more abstract but elegant solution, which might be less intuitive but leads to more concise code.
- **Performance**: C++ provides more control over intermediate states and might offer performance advantages in scenarios where fine-grained optimization is needed. Haskell's approach, while potentially efficient, depends heavily on the compiler's optimization strategies for high-level abstractions.

In summary, both languages provide robust tools for applying function composition to lists, but they do so in fundamentally different ways that reflect their underlying paradigms.
