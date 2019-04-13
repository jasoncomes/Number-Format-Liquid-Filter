# numformat

*Converts string into a number format.*

### **Usage**

    {{ number | numformat }}

### **Parameters**

- `number` string. number. required. The number to be converted into a comma separated format.

### Return

- string. This will output the value of `number` but converted to comma separated format.

## **Example**

### Input

    Jason's new car will cost him ${{ 50000 | numformat }}.

### **Output**

    Jason's new car will cost him $50,000.
