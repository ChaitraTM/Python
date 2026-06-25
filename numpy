### Python List vs NumPy Array — Quick Notes

#### 1. Definition

* **List**: Built-in Python data structure.
* **NumPy Array**: Data structure provided by the NumPy library for numerical computations.

---

#### 2. Data Types

**List**

```python
lst = [1, "hello", 3.5]   # Mixed data types allowed
```

**NumPy Array**

```python
import numpy as np

arr = np.array([1, 2, 3])   # Usually same data type
```

---

#### 3. Performance

* Lists are slower for numerical operations.
* NumPy arrays are faster because they use optimized C implementations and contiguous memory.

---

#### 4. Memory Usage

* Lists consume more memory.
* NumPy arrays are more memory-efficient.

---

#### 5. Addition (`+` Operator)

**List**

```python
a = [1, 2, 3]
b = [4, 5, 6]

print(a + b)
# Output: [1, 2, 3, 4, 5, 6]
```

`+` concatenates lists.

**NumPy Array**

```python
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

print(a + b)
# Output: [5 7 9]
```

`+` performs element-wise addition.

---

#### 6. Multiplication (`*` Operator)

**List**

```python
a = [1, 2, 3]

print(a * 3)
# Output: [1, 2, 3, 1, 2, 3, 1, 2, 3]
```

Repeats the list.

**NumPy Array**

```python
import numpy as np

a = np.array([1, 2, 3])

print(a * 3)
# Output: [3 6 9]
```

Performs element-wise multiplication.

---

#### 7. Multidimensional Data

**List**

```python
matrix = [[1, 2], [3, 4]]
```

**NumPy Array**

```python
matrix = np.array([[1, 2], [3, 4]])
```

NumPy provides built-in support for N-dimensional arrays.

---

#### 8. Comparison Table

| Feature                  | Python List  | NumPy Array         |
| ------------------------ | ------------ | ------------------- |
| Library                  | Built-in     | NumPy               |
| Data Types               | Mixed        | Same type preferred |
| Speed                    | Slower       | Faster              |
| Memory                   | More         | Less                |
| Mathematical Operations  | Limited      | Efficient           |
| Multidimensional Support | Nested Lists | Native Support      |

---

#### 9. When to Use

**Use List When:**

* Storing mixed data types
* General-purpose programming
* Small datasets

**Use NumPy Array When:**

* Numerical computations
* Data analysis
* Machine learning
* Scientific computing
* Large datasets

---

### Key Point

> Lists are general-purpose containers, while NumPy arrays are optimized for fast and efficient numerical computations.

# NumPy Array Basics

## What is NumPy?

* **NumPy (Numerical Python)** is a Python library used for numerical computations.
* The main object in NumPy is the **ndarray (N-dimensional array)**.

```python
import numpy as np
```

---

## Creating Arrays

### 1. From a List

```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5])
print(arr)
```

Output:

```python
[1 2 3 4 5]
```

### 2. 2D Array

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
print(arr)
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

---

## Array Attributes

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])
```

### Shape

```python
print(arr.shape)
```

Output:

```python
(2, 3)
```

(2 rows, 3 columns)

### Dimensions

```python
print(arr.ndim)
```

Output:

```python
2
```

### Size

```python
print(arr.size)
```

Output:

```python
6
```

### Data Type

```python
print(arr.dtype)
```

Output:

```python
int64
```

---

## Special Arrays

### Zeros

```python
np.zeros((2,3))
```

Output:

```python
[[0. 0. 0.]
 [0. 0. 0.]]
```

### Ones

```python
np.ones((2,3))
```

### Full

```python
np.full((2,3), 5)
```

### Identity Matrix

```python
np.eye(3)
```

Output:

```python
[[1. 0. 0.]
 [0. 1. 0.]
 [0. 0. 1.]]
```

---

## Range Functions

### arange()

```python
np.arange(1, 10, 2)
```

Output:

```python
[1 3 5 7 9]
```

### linspace()

```python
np.linspace(0, 10, 5)
```

Output:

```python
[ 0.   2.5  5.   7.5 10. ]
```

---

## Indexing

```python
arr = np.array([10, 20, 30, 40, 50])
```

```python
print(arr[0])    # 10
print(arr[-1])   # 50
```

---

## Slicing

```python
print(arr[1:4])
```

Output:

```python
[20 30 40]
```

---

## 2D Array Indexing

```python
arr = np.array([[1,2,3],
                [4,5,6]])
```

```python
print(arr[0,1])
```

Output:

```python
2
```

```python
print(arr[1,2])
```

Output:

```python
6
```

---

## Basic Operations

```python
a = np.array([1,2,3])
b = np.array([4,5,6])
```

### Addition

```python
a + b
```

Output:

```python
[5 7 9]
```

### Subtraction

```python
a - b
```

Output:

```python
[-3 -3 -3]
```

### Multiplication

```python
a * b
```

Output:

```python
[ 4 10 18]
```

### Division

```python
a / b
```

Output:

```python
[0.25 0.4  0.5 ]
```

---

## Aggregation Functions

```python
arr = np.array([1,2,3,4,5])
```

```python
arr.sum()      # 15
arr.mean()     # 3.0
arr.max()      # 5
arr.min()      # 1
```

---

## Reshaping

```python
arr = np.arange(1,7)
```

```python
arr.reshape(2,3)
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

---

## Useful Interview Questions

1. What is NumPy and why is it faster than Python lists?
2. Difference between `arange()` and `linspace()`.
3. Difference between `shape`, `size`, and `ndim`.
4. What is array slicing?
5. Difference between element-wise multiplication and matrix multiplication.
6. How does `reshape()` work?

### One-Line Summary

**NumPy arrays are fast, memory-efficient, homogeneous data structures used for numerical and scientific computing in Python.**

# NumPy Array Indexing and Slicing

## 1. Array Indexing

Indexing is used to access a specific element in an array.

### 1D Array Indexing

```python
import numpy as np

arr = np.array([10, 20, 30, 40, 50])

print(arr[0])   # 10
print(arr[2])   # 30
print(arr[-1])  # 50
print(arr[-2])  # 40
```

### Output

```python
10
30
50
40
```

---

## 2. 2D Array Indexing

Syntax:

```python
array[row, column]
```

Example:

```python
arr = np.array([[1, 2, 3],
                [4, 5, 6]])

print(arr[0, 0])  # 1
print(arr[0, 2])  # 3
print(arr[1, 1])  # 5
print(arr[1, 2])  # 6
```

### Output

```python
1
3
5
6
```

---

## 3. 3D Array Indexing

```python
arr = np.array([
    [[1,2],[3,4]],
    [[5,6],[7,8]]
])

print(arr[0,1,1])
```

### Output

```python
4
```

Explanation:

* First block → `0`
* Second row → `1`
* Second column → `1`

---

# Array Slicing

Slicing extracts multiple elements from an array.

## Syntax

```python
array[start : stop : step]
```

Where:

* `start` → starting index (included)
* `stop` → ending index (excluded)
* `step` → increment

---

## 4. 1D Array Slicing

```python
arr = np.array([10,20,30,40,50,60])
```

### Elements from index 1 to 4

```python
print(arr[1:5])
```

Output:

```python
[20 30 40 50]
```

### From beginning to index 3

```python
print(arr[:4])
```

Output:

```python
[10 20 30 40]
```

### From index 2 to end

```python
print(arr[2:])
```

Output:

```python
[30 40 50 60]
```

### Every second element

```python
print(arr[::2])
```

Output:

```python
[10 30 50]
```

### Reverse array

```python
print(arr[::-1])
```

Output:

```python
[60 50 40 30 20 10]
```

---

## 5. 2D Array Slicing

```python
arr = np.array([[1,2,3],
                [4,5,6],
                [7,8,9]])
```

### First Row

```python
print(arr[0, :])
```

Output:

```python
[1 2 3]
```

### Second Column

```python
print(arr[:, 1])
```

Output:

```python
[2 5 8]
```

### First Two Rows

```python
print(arr[0:2, :])
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

### Last Two Columns

```python
print(arr[:, 1:])
```

Output:

```python
[[2 3]
 [5 6]
 [8 9]]
```

---

## 6. Fancy Indexing

Select multiple elements using a list of indices.

```python
arr = np.array([10,20,30,40,50])

print(arr[[0,2,4]])
```

Output:

```python
[10 30 50]
```

---

## 7. Boolean Indexing

Filter elements based on a condition.

```python
arr = np.array([10,20,30,40,50])

print(arr[arr > 25])
```

Output:

```python
[30 40 50]
```

```python
print(arr[arr % 20 == 0])
```

Output:

```python
[20 40]
```

---

## Quick Revision Table

| Operation        | Example        | Output             |
| ---------------- | -------------- | ------------------ |
| First element    | `arr[0]`       | `10`               |
| Last element     | `arr[-1]`      | `50`               |
| Slice            | `arr[1:4]`     | `[20 30 40]`       |
| Step size        | `arr[::2]`     | `[10 30 50]`       |
| Reverse          | `arr[::-1]`    | `[50 40 30 20 10]` |
| First row        | `arr[0,:]`     | Row values         |
| First column     | `arr[:,0]`     | Column values      |
| Fancy indexing   | `arr[[0,2,4]]` | Selected elements  |
| Boolean indexing | `arr[arr>25]`  | Filtered elements  |

### Key Point

* **Indexing** → Access a single element.
* **Slicing** → Access multiple elements.
* NumPy supports **negative indexing**, **fancy indexing**, and **boolean indexing** for powerful data selection.

# NumPy Operations and Broadcasting

## 1. Arithmetic Operations

NumPy performs **element-wise operations**.

```python
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
```

### Addition

```python
a + b
```

Output:

```python
[5 7 9]
```

### Subtraction

```python
a - b
```

Output:

```python
[-3 -3 -3]
```

### Multiplication

```python
a * b
```

Output:

```python
[ 4 10 18]
```

### Division

```python
a / b
```

Output:

```python
[0.25 0.4  0.5]
```

### Power

```python
a ** 2
```

Output:

```python
[1 4 9]
```

---

## 2. Scalar Operations

A scalar operation is applied to every element.

```python
a = np.array([1, 2, 3])
```

```python
a + 10
# [11 12 13]

a * 5
# [ 5 10 15]

a / 2
# [0.5 1.  1.5]
```

---

## 3. Comparison Operations

```python
a = np.array([1, 2, 3, 4, 5])
```

```python
a > 3
```

Output:

```python
[False False False True True]
```

```python
a == 3
```

Output:

```python
[False False True False False]
```

---

## 4. Aggregate Operations

```python
arr = np.array([10, 20, 30, 40, 50])
```

```python
arr.sum()      # 150
arr.mean()     # 30.0
arr.max()      # 50
arr.min()      # 10
arr.std()      # Standard Deviation
arr.var()      # Variance
```

---

## 5. Mathematical Functions

```python
arr = np.array([1, 4, 9, 16])
```

```python
np.sqrt(arr)
# [1. 2. 3. 4.]

np.log(arr)
# Natural logarithm

np.exp(arr)
# e^x

np.sin(arr)
np.cos(arr)
```

---

# Broadcasting

## What is Broadcasting?

Broadcasting allows NumPy to perform operations on arrays of **different shapes** without explicitly copying data.

### Rule:

Two dimensions are compatible if:

1. They are equal, OR
2. One of them is 1

---

## Example 1: Scalar Broadcasting

```python
arr = np.array([1, 2, 3])

arr + 10
```

Output:

```python
[11 12 13]
```

Internally:

```python
[1 2 3]
+
[10 10 10]
```

---

## Example 2: 1D Array + Scalar

```python
arr = np.array([10, 20, 30])

arr * 2
```

Output:

```python
[20 40 60]
```

---

## Example 3: Matrix + Vector

```python
A = np.array([[1, 2, 3],
              [4, 5, 6]])

B = np.array([10, 20, 30])

print(A + B)
```

Output:

```python
[[11 22 33]
 [14 25 36]]
```

Broadcasting expands B:

```python
[[10 20 30]
 [10 20 30]]
```

Then performs element-wise addition.

---

## Example 4: Column Broadcasting

```python
A = np.array([[1, 2, 3],
              [4, 5, 6]])

B = np.array([[10],
              [20]])

print(A + B)
```

Output:

```python
[[11 12 13]
 [24 25 26]]
```

Broadcasted form:

```python
[[10 10 10]
 [20 20 20]]
```

---

## Example 5: Compatible Shapes

```python
A.shape = (2, 3)
B.shape = (3,)
```

Comparison:

```python
(2,3)
(1,3)
```

Compatible ✓

Result Shape:

```python
(2,3)
```

---

## Example 6: Incompatible Shapes

```python
A = np.array([[1,2,3],
              [4,5,6]])

B = np.array([10,20])
```

```python
A + B
```

Error:

```python
ValueError: operands could not be broadcast together
```

Shapes:

```python
(2,3)
(2,)
```

Not compatible ✗

---

# Broadcasting Rules

Compare dimensions from right to left:

### Compatible

```python
(4,3)
(1,3)
```

✓ Second dimension equal

---

```python
(5,4,3)
(4,3)
```

✓ Missing dimension treated as 1

```python
(5,4,3)
(1,4,3)
```

---

```python
(3,1)
(1,4)
```

✓ Result shape = (3,4)

---

### Not Compatible

```python
(3,4)
(2,4)
```

✗ First dimensions differ and neither is 1

---

# Quick Revision

| Operation      | Example                        |
| -------------- | ------------------------------ |
| Addition       | `a + b`                        |
| Subtraction    | `a - b`                        |
| Multiplication | `a * b`                        |
| Division       | `a / b`                        |
| Power          | `a ** 2`                       |
| Sum            | `arr.sum()`                    |
| Mean           | `arr.mean()`                   |
| Max            | `arr.max()`                    |
| Min            | `arr.min()`                    |
| Square Root    | `np.sqrt(arr)`                 |
| Broadcasting   | `A + B` with compatible shapes |

## Broadcasting Formula

Two dimensions are compatible if:

```text
Dimension 1 == Dimension 2
OR
One of them == 1
```

NumPy automatically expands the smaller array and performs element-wise operations efficiently without creating unnecessary copies.

# NumPy Reshaping and Resizing

## 1. Reshaping

**Reshaping** changes the shape (dimensions) of an array **without changing its data**.

### Syntax

```python
array.reshape(rows, columns)
```

---

## Example 1: 1D to 2D

```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5, 6])

new_arr = arr.reshape(2, 3)

print(new_arr)
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

Shape:

```python
print(new_arr.shape)
```

Output:

```python
(2, 3)
```

---

## Example 2: 2D to 3D

```python
arr = np.array([1,2,3,4,5,6,7,8])

new_arr = arr.reshape(2,2,2)

print(new_arr)
```

Output:

```python
[[[1 2]
  [3 4]]

 [[5 6]
  [7 8]]]
```

Shape:

```python
(2,2,2)
```

---

## Important Rule

Total number of elements must remain the same.

```python
arr = np.array([1,2,3,4,5,6])

arr.reshape(3,2)   # ✓ 6 elements
```

```python
arr.reshape(4,2)   # ✗ Error
```

Error:

```python
ValueError: cannot reshape array of size 6 into shape (4,2)
```

---

## Using -1

NumPy automatically calculates one dimension.

```python
arr = np.array([1,2,3,4,5,6])

arr.reshape(2,-1)
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

```python
arr.reshape(-1,2)
```

Output:

```python
[[1 2]
 [3 4]
 [5 6]]
```

---

# Flattening Arrays

Convert multidimensional array into 1D.

### flatten()

```python
arr = np.array([[1,2,3],
                [4,5,6]])

print(arr.flatten())
```

Output:

```python
[1 2 3 4 5 6]
```

---

### ravel()

```python
print(arr.ravel())
```

Output:

```python
[1 2 3 4 5 6]
```

### Difference

* `flatten()` → returns a **copy**
* `ravel()` → returns a **view** whenever possible (more memory efficient)

---

# Resizing

## resize() Method

Changes the size of the array itself.

### Syntax

```python
array.resize(new_shape)
```

---

## Example 1: Increase Size

```python
arr = np.array([1,2,3,4])

arr.resize((2,3))

print(arr)
```

Output:

```python
[[1 2 3]
 [4 0 0]]
```

New positions are filled with zeros.

---

## Example 2: Reduce Size

```python
arr = np.array([1,2,3,4,5,6])

arr.resize((2,2))

print(arr)
```

Output:

```python
[[1 2]
 [3 4]]
```

Extra elements are discarded.

---

# np.resize() Function

Returns a new resized array.

```python
arr = np.array([1,2,3])

new_arr = np.resize(arr, (2,4))

print(new_arr)
```

Output:

```python
[[1 2 3 1]
 [2 3 1 2]]
```

Unlike `resize()`, it repeats elements if needed.

---

# reshape() vs resize()

| Feature                          | reshape() | resize()         |
| -------------------------------- | --------- | ---------------- |
| Changes shape                    | ✓         | ✓                |
| Changes total size               | ✗         | ✓                |
| Returns new array                | ✓         | In-place         |
| Requires same number of elements | ✓         | ✗                |
| Extra space handling             | Error     | Fills with zeros |
| Data loss possible               | ✗         | ✓                |

---

## Examples

### reshape()

```python
arr = np.arange(6)

arr.reshape(2,3)
```

Output:

```python
[[0 1 2]
 [3 4 5]]
```

---

### resize()

```python
arr = np.arange(6)

arr.resize((3,3))

print(arr)
```

Output:

```python
[[0 1 2]
 [3 4 5]
 [0 0 0]]
```

---

# Transpose

Converts rows into columns and columns into rows.

```python
arr = np.array([[1,2,3],
                [4,5,6]])

print(arr.T)
```

Output:

```python
[[1 4]
 [2 5]
 [3 6]]
```

---

# Quick Revision

| Function        | Purpose                            |
| --------------- | ---------------------------------- |
| `reshape()`     | Change shape without changing size |
| `resize()`      | Change shape and size              |
| `np.resize()`   | Create resized copy                |
| `flatten()`     | Convert to 1D (copy)               |
| `ravel()`       | Convert to 1D (view)               |
| `.T`            | Transpose rows and columns         |
| `-1` in reshape | Auto-calculate dimension           |

### Key Point

* **reshape()** → same data, different shape.
* **resize()** → can add/remove elements.
* **flatten()/ravel()** → convert arrays to 1D.
* **transpose (.T)** → swap rows and columns.

# NumPy Concatenation (Joining Arrays)

## What is Concatenation?

Concatenation means **joining two or more arrays into one array**.

In NumPy, this is done using:

```python
np.concatenate()
```

---

# 1. Basic Concatenation (1D Arrays)

```python id="nq2v3a"
import numpy as np

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

result = np.concatenate((a, b))
print(result)
```

### Output:

```python id="9kq1pl"
[1 2 3 4 5 6]
```

---

# 2. Concatenation of 2D Arrays (Axis = 0)

👉 Joins row-wise (vertically)

```python id="x2p9fa"
a = np.array([[1, 2],
              [3, 4]])

b = np.array([[5, 6],
              [7, 8]])

result = np.concatenate((a, b), axis=0)

print(result)
```

### Output:

```python id="k8v1sd"
[[1 2]
 [3 4]
 [5 6]
 [7 8]]
```

---

# 3. Concatenation of 2D Arrays (Axis = 1)

👉 Joins column-wise (horizontally)

```python id="w1c9mz"
result = np.concatenate((a, b), axis=1)

print(result)
```

### Output:

```python id="m4x9qp"
[[1 2 5 6]
 [3 4 7 8]]
```

---

# 4. Stacking Arrays

## 4.1 Vertical Stack (vstack)

Same as axis = 0

```python id="g7l2tt"
np.vstack((a, b))
```

### Output:

```python id="p3n8qk"
[[1 2]
 [3 4]
 [5 6]
 [7 8]]
```

---

## 4.2 Horizontal Stack (hstack)

Same as axis = 1

```python id="b6k2pw"
np.hstack((a, b))
```

### Output:

```python id="r9t2mv"
[[1 2 5 6]
 [3 4 7 8]]
```

---

## 4.3 Depth Stack (dstack)

Stacks along third dimension

```python id="u8n1xv"
np.dstack((a, b))
```

### Output:

```python id="q2j8lm"
[[[1 5]
  [2 6]]

 [[3 7]
  [4 8]]]
```

---

# 5. Important Rule

## Shapes must match (except along concatenation axis)

### Valid:

```python id="t7m4qq"
a.shape = (2,2)
b.shape = (2,2)
```

### Invalid:

```python id="c9p2aa"
a.shape = (2,3)
b.shape = (2,2)
```

❌ Cannot concatenate directly

---

# 6. Difference Between Methods

| Function        | Description                 |
| --------------- | --------------------------- |
| `concatenate()` | General joining function    |
| `vstack()`      | Stack vertically (axis=0)   |
| `hstack()`      | Stack horizontally (axis=1) |
| `dstack()`      | Stack depth-wise (axis=2)   |

---

# 7. Example Combining All

```python id="k3m8pl"
a = np.array([[1, 2],
              [3, 4]])

b = np.array([[5, 6],
              [7, 8]])

print(np.concatenate((a, b), axis=0))
print(np.concatenate((a, b), axis=1))
```

---

# Quick Revision

* **concatenate()** → joins arrays
* **axis=0** → row-wise join
* **axis=1** → column-wise join
* **vstack()** → vertical stack
* **hstack()** → horizontal stack
* **dstack()** → depth stack

---

# Key Point

👉 Concatenation is used to **combine multiple NumPy arrays into a single array**, either row-wise or column-wise depending on the axis.
