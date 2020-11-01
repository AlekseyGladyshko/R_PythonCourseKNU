### 1. Створити матрицю mat з 5 стовпцями та 10 строками за допомогою matrix з випадковими даними (функція rnorm(50)).
```(r)
mat <- matrix(data = rnorm(50), ncol = 5, nrow = 10)
mat
```

### 2. Знайти максимальне значення в кожному стовпці.
```(r)
apply(mat, 2, max)
```

### 3. Знайти середнє (mean) значення кожного стовпця.
``` (r)
apply(mat, 2, mean)
```

### 4. Знайти мінімальне значення в кожному рядку.
``` (r)
apply(mat, 1, min)
```

### 5. Відсортувати кожен стовбець таблиці.
```(r)
apply(mat, 2, sort)
```

### 6. Знайти кількість значень < 0 для кожного стовпця. Використати свою функцію.
``` (r)
less_than_zero <- function(x) {
	sum(x < 0)
}

apply(mat, 2, less_than_zero)
```	

### 7. Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в стовпці є елементи >2, FALSE – якщо немає.
```(r)
bigger_than_two <- function(x) {
	(sum(x > 2) > 0)
}

apply(mat, 2, bigger_than_two)
```

### 8. Створить список list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2)). Для цього списку знайдіть sum за допомогою lapply.
``` (r)
list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2))
lapply(list1, sum)
```

### 9. Для кожного елементу списку list1 знайдіть максимальне та мінімальне значення (range) за допомогою lapply та sapply.
```(r)
lapply(list1, range)
sapply(list1, range)
```

### 10.Для вбудованого набору даних InsectSprays знайти середнє count для кожного spray.
```(r)
sprays <- split(InsectSprays, InsectSprays[["spray"]])

mean_count <- function(x){
  mean(x[["count"]], nar.rm = TRUE)
}

lapply(sprays, mean_count)
```