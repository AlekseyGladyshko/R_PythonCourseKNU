### 1. Функція add2(x, y), яка повертає суму двох чисел.
``` (r)
add2 <- function(x, y) {
	x + y
}
add2(1, 2)
```

### 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.
``` (r)
above <- function(x, n = 10){
	x[x > n]
}
above(c(1:20))
```

### 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
``` (r)
my_ifelse <- function(x, exp, n) {
  if (exp == "<") {
    res <- x[x < n]
    res
  } 
  else if (exp == ">") {
    res <- x[x > n]
    res
  }
  else if (exp == "<=") {
    res <- x[x <= n]
    res
  }
  else if (exp == ">=") {
    res <- x[x >= n]
    res
  }
  else {
    x
  }
}

my_ifelse(c(1:10), ">=", 5)
```

### 4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
``` (r)
columnmean <- function(x, removeNA = TRUE) {
  res <- matrix(nrow = 1, ncol = ncol(x))
  colnames(res) <- colnames(x)

  for(i in 1:ncol(x)) {
      res[1, i] <- mean(x[,i], na.rm = removeNA)
  }
  res
}
```