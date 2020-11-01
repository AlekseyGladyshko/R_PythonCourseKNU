``` (r)
data <- read.csv(file = 'hw1_data.csv')
```

### 1. Які назви стовпців файлу даних?
``` (r)
names(data)
```

### 2. Виведіть перші 6 строк фрейму даних.
``` (r)
data[1:6,]
```

### 3. Скільки спостерігань (строк) в дата фреймі?
``` (r)
nrow(data)
```

### 4. Виведіть останні 10 строк дата фрейму.
``` (r)
data[(nrow(data) - 10) : nrow(data)]
```

### 5. Як багато значень «NA» в стовпці «Ozone»?
``` (r)
sum(is.na(data["Ozone"]))
```

### 6. Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.
``` (r)
mean(data[["Ozone"]], na.rm = TRUE)
```

### 7. Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?
``` (r)
data_subset <- subset(data, Ozone > 31 & Temp > 90)
data_subset

mean(data_subset[["Solar.R"]])
```

### 8. Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?
``` (r)
mean(data[data["Month"] == 6,][,"Temp"], na.rm = TRUE)
```

### 9. Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?
``` (r)
max(data[data["Month"] == 5,][,"Ozone"], na.rm = TRUE)
```