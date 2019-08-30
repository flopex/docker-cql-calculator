# docker-cql-calculator
Docker build of the cql-calculator tool

# Build Image
```
docker build -t cql-calculator .
```

# Run
```
docker run -it cql-calculator -h
```

# Example
```
docker run -it cql-calculator -query "CREATE TABLE video (video_id int, email text, name text STATIC, status tinyint, uploaded_at timestamp, PRIMARY KEY (video_id, email))"
Enter rows count per one partition: 70000
Enter (avarage) size for `email (text)` column: 256
Enter (avarage) size for `name (text)` column: 256
Number of Values:
(70000 * (5 - 2 - 1) + 1) = 140001

Partition Size on Disk:
(4 + 256 + (70000 * 521) + (8 * 140001)) = 37590268 bytes (35.85 Mb)
```
