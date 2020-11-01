### 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
``` (r)
ch <- "character value"
ch
class(ch)

num <- 10.5
num
class(num)

int <- 10L
int
class(num)

comp <- 10 + 1i
comp
class(comp)

logical <- TRUE
logical
class(logical)
```

### 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
``` (r)
vector_1 <- c(5:75)
vector_1

vector_2 <- c(3.14, 2.71, 0, 13)
vector_2

vector_3 <- as.logical(c(1:100))
vector_3
```

### 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
| 0.5 | 1.3 | 3.5 |
| 3.9 | 131 | 2.8 |
| 0   | 2.2 | 4.6 |
| 2   | 7   | 5.1 |

``` (r)
matrix_1 <- matrix(c(0.5, 1.3, 3.5, 3.9, 131, 2.8, 0, 2.2, 4.6, 2, 7, 5.1), nrow=4, ncol=3, byrow=TRUE)
matrix_1

column_1 <- c(0.5, 3.9, 0, 2)
column_2 <- c(1.3, 131, 2.2, 7)
column_3 <- c(3.5, 2.8, 4.6, 5.1)

matrix_2 <- cbind(column_1, column_2, column_3)
matrix_2
```

### 4. Створити довільний список (list), в який включити всі базові типи.
``` (r)
list_var <- list(ch, num, int, comp, logical)
class(list_var)
list_var
```

### 5. Створити фактор з трьома рівнями «baby», «child», «adult».
``` (r)
fact <- factor(c("baby", "child", "adult"))
fact
```

### 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.
``` (r)
vector <- c(1:4, NA, 6, 7, NA, 9, NA, 11)
which(is.na(vector))[1]
```

### 7. Створити довільний data frame та вивести в консоль.
``` (r)
data_frame <- data.frame(row1=1:3, row2=4:6, row3=7:9)
data_frame
```

### 8. Змінити імена стовпців цього data frame.
``` (r)
names(data_frame) <- c("First row", "Second row", "Third row")
data_frame
```