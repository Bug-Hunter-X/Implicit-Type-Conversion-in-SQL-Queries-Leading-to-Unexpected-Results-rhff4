To fix this, we should explicitly cast the numeric column to a string or the string literal to a number before making the comparison. The preferred method depends on data consistency requirements and performance concerns.  If the numeric column always contains numbers as expected, casting the string literal to a number would be efficient:

```sql
SELECT * FROM my_table WHERE numeric_column = CAST('10' AS UNSIGNED);
```

If there's a possibility of non-numeric values in the `numeric_column`,  casting it to a string would be safer, but might have performance implications:

```sql
SELECT * FROM my_table WHERE CAST(numeric_column AS CHAR) = '10';
```
The best approach is to ensure data consistency and use appropriate data types.  Avoid mixing data types in comparisons whenever possible.