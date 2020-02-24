# Docs V2 

WIP

## Configuration
The configuration files are in `./config`. For every version of the site a new
configuration file can be added in the format of `vX.X.X.toml` or
`vX.X.X.yaml`.

## How to run a local server

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
make serve port=8888

# or 

make serve config=./config/v2.0.0.toml
```

> The default config file to serve is set at the top of the Makefile
