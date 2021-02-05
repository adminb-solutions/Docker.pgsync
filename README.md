# Dockerized pgsync

[`pgsync`](https://github.com/ankane/pgsync) helps synchronize two different Postgres databases. 

## Usage

Simplest usage with default options

```
docker run --rm -e DATABASE_SOURCE=postgresql://localhost:5432/database1 -e DATABASE_TARGET=postgresql://localhost:5432/database2 adminb/pgsync
```
 
You can add extra [cmd line parameteres](https://github.com/ankane/pgsync#how-to-use)

```
docker run --rm -e DATABASE_SOURCE=postgresql://localhost:5432/database1 -e DATABASE_TARGET=postgresql://localhost:5432/database2 adminb/pgsync table1,table2
```

Alternatively you can mount a different [`.pgsync.yml` configuration](https://github.com/ankane/pgsync#setup):

```
docker run --rm -v <path-to-pgsync-folder>/sync -e DATABASE_SOURCE=postgresql://localhost:5432/database1 -e DATABASE_TARGET=postgresql://localhost:5432/database2 adminb/pgsync
```
