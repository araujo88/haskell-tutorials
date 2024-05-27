# Functions in Haskell

The syntax you've encountered in Haskell for defining functions, such as the `sumTwoNumbers` function, can indeed seem unusual if you're more accustomed to the syntax of other programming languages like Python, Java, or C++. Let's break down the components of this syntax to make it clearer:

```haskell
sumTwoNumbers :: Int -> Int -> Int
sumTwoNumbers a b = a + b
```

1. **Type Declaration:**

   - `sumTwoNumbers :: Int -> Int -> Int`
   - This line is the type signature of the function. It declares that `sumTwoNumbers` is a function that takes two integers (`Int -> Int`) and returns an integer (`-> Int`). The arrow (`->`) is used to indicate the flow of types from input to output. You can read this as "sumTwoNumbers is a function that takes an Int and an Int, and returns an Int."

2. **Function Definition:**
   - `sumTwoNumbers a b = a + b`
   - This line defines the function itself. `sumTwoNumbers` is the name of the function, and `a` and `b` are its parameters. The expression `a + b` following the equals sign defines what the function does: it adds the two integers `a` and `b` together.
   - In Haskell, function application (calling a function with some arguments) is done by simply spacing between the function name and its arguments, which is why you see `a b` without any parentheses or commas as commonly seen in other languages.

**Key Points to Understand Haskell's Syntax:**

- **Function Application is Left-associative:** When you see something like `sumTwoNumbers 3 4` in Haskell, it is parsed as `((sumTwoNumbers 3) 4)`. This is why you can define functions that look like they take multiple arguments, but in reality, Haskell functions only ever take one argument. This concept is known as "currying," where a function taking multiple arguments can be transformed into a sequence of functions each taking a single argument.

- **No Need for Parentheses Around Arguments:** Unlike many languages, Haskell doesn’t require parentheses around the arguments of a function call unless needed to clarify precedence. This leads to cleaner and more concise code, especially when dealing with higher-order functions.

- **Whitespace Matters for Application:** Function application is achieved by whitespace, making the syntax very clean and minimalistic, which is a hallmark of Haskell's syntax aimed at reducing clutter and improving readability.

This combination of features makes Haskell's function syntax distinctive and can enhance expressiveness and flexibility in functional programming.

## Currying

Currying is a fundamental concept in functional programming, especially prominent in languages like Haskell. It is named after the mathematician Haskell Curry. Currying transforms a function that takes multiple arguments into a sequence of functions, each taking a single argument and returning another function that takes the next argument. This allows functions to be partially applied, meaning that a function that takes several arguments can be applied to some of those arguments and return a new function that only requires the remaining arguments.

### How Currying Works

In a language like Haskell, all functions are technically curried: they take one argument and return one result. If a function appears to take multiple arguments, it's actually taking one argument and returning another function which takes the next argument, and so on. This might sound complex, but it leads to very powerful and flexible patterns in programming.

Consider a simple function in Haskell that takes two arguments:

```haskell
add :: Int -> Int -> Int
add x y = x + y
```

The type signature `Int -> Int -> Int` can be read more explicitly as `Int -> (Int -> Int)`. This means `add` is a function that takes an `Int` and returns a function of type `Int -> Int`. Here's how it operates:

- When you call `add 5`, you're actually applying `5` to `add`, resulting in a new function of type `Int -> Int` which adds 5 to its argument.
- You can then apply another integer to this resulting function, e.g., `add 5 10` is evaluated as `(add 5) 10` which finally returns `15`.

### Benefits of Currying

1. **Partial Application:** Currying makes partial application straightforward. For example, if you have a function that adds a particular number, you can create a new function by specifying the first number and reusing this function to add different numbers to the specified one.

2. **Higher-order Functions:** Currying helps in creating higher-order functions that return other functions as results, making it easier to build abstract and flexible APIs.

3. **Function Composition:** In functional programming, functions are often composed together (using one function's output as another's input). Currying facilitates this by allowing you to transform functions so that they match the expected input/output types for composition.

### Example in Haskell

Here’s a practical example to demonstrate partial application using currying:

```haskell
multiply :: Int -> Int -> Int
multiply x y = x * y

double :: Int -> Int
double = multiply 2
```

In this example:

- `multiply` takes two `Int` arguments. However, by currying, we can provide just one argument (like `2`), which returns a new function `double` that takes an `Int` and doubles it.

Currying is not unique to Haskell; many other languages (like JavaScript) can simulate this behavior through closures and higher-order functions, but in Haskell, it's a built-in and natural part of the language design. This functionality enhances the flexibility and expressiveness of functional programming by enabling more modular and reusable code structures.
