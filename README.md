# Elixir Enum.reduce Bug

This repository demonstrates a common error in Elixir when using `Enum.reduce` with conditional logic within the reducer function.  The example shows how a seemingly correct implementation can lead to unexpected results and demonstrates a better approach.

The original `bug.ex` file contains code that intends to sum only numbers in a list greater than 3, but the result is not as expected.

The `bugSolution.ex` file provides the correct implementation that fixes the unexpected behavior.

## How to reproduce

1. Clone this repository.
2. Navigate to the directory.
3. Run `iex bug.ex` and examine the output. Then, run `iex bugSolution.ex` and compare the outputs.

## Bug Description

The `Enum.reduce` function in Elixir works correctly. The bug lies in the logic of the conditional inside the reducer function.   The `else` case does not explicitly handle the case where a number is not greater than 3.   This leads to unexpected behavior.

## Solution

The solution directly addresses the omission of handling numbers less than or equal to 3.