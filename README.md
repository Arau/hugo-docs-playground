# Docs V2 

WIP

## Dependencies

- [Dapper](https://github.com/rancher/dapper)
- Docker

## Configuration

The configuration files are in `./config`. For every version of the site a new
configuration file can be added in the format of `vX.X.X.toml` or
`vX.X.X.yaml`.

## How to run a local server

> The base image defined in the `Dockerfile.dapper` is pulled from a private
> repository. You can build your own image from `Dockerfile.build`.

To run the site locally execute:

```bash
make serve
```

> Check http://localhost:1313
> The site bounds to 0.0.0.0, so you can access the site from outside your
> computer

If you want to change specific parameters of the "hugo server" command you can
pass parameters as follows.

```bash
# Serve from a different port
make port=8888 serve

# or 

make config=./config/v2.0.0.toml serve
```

> The default config file to serve is set at the top of the Makefile


## Misc

The theme use is based on https://github.com/google/docsy.git even though is
treated as part of the repository instead of a submodule. 
