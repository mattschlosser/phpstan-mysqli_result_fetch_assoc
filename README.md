# PHPStan reports incorrect return type

PHPStan incorrectly reports the return type of `mysqli_result::fetch_assoc` is of 
type array<string, string>|null when in fact it can possibly be array<string, string|null>|null

Run:

```bash
docker-compose run php
```

To run the actual script to prove it can return `NULL`:

```bash
docker-compose up mysql -d
docker-compose run php php src/index.php
```
