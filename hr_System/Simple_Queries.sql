To drop the `employee` table in PostgreSQL, use this command:

```sql
DROP TABLE IF EXISTS employee;
```

If the table exists, it will be removed. If not, it won't throw an error because of `IF EXISTS`.

If there are foreign key dependencies and you want to force it:

```sql
DROP TABLE IF EXISTS employee CASCADE;
```

Let me know if you also want to recreate or modify it.