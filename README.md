# MySQL Docker

A naive setup to run a containerized MySQL server in the `main` network of Docker. Just issue:

```
./run.sh
```

The `shared` directory is used for having direct access to the container filesystem. This is useful for example when restoring SQL dumps. One can place the dump in question in such folder and through a `docker container exec...` command restore that to the database.

The `data` directory is used to preserve DBMS persistent files beyond the life of the container. Therefore, when the container running the server is deleted, the database files are kept intact and are reusable, as if nothing happened, by running a new container with such a directory mounted in the original path.