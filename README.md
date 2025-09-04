# ReBuild Build  

Get the [latest APKs release](https://github.com/sabbirba/rebuild/releases).

## To include/exclude patches or patch other apps

 * Customize [`config.toml`](./config.toml) using [rvmm-config-gen](https://j-hc.github.io/rvmm-config-gen/)
 * Run the build [workflow](../../actions/workflows/build.yml)
 * Grab your modules and APKs from [releases](../../releases)

Also see here [`CONFIG.md`](./CONFIG.md)

## Building Locally
### On macOS / Desktop

Prerequisites (Desktop/macOS):

- Homebrew installed (recommended) or ensure you can install the listed tools by your package manager.
- Java 17 (OpenJDK 17)
- jq
- zip / unzip
- curl

Install with Homebrew (macOS):

```bash
brew install openjdk@17 jq zip unzip curl
```

Notes:

- Ensure Java 17 is available on PATH. On macOS with Homebrew you may need to run `brew link --force --overwrite openjdk@17` or set `JAVA_HOME` to the brewed JDK.
- The repo bundles platform-specific binaries in `bin/`. If your architecture isn't present there, you will need to provide compatible `aapt2`, `htmlq` and `tq` binaries in `bin/` or install them system-wide.

### On Termux
```console

bash <(curl -sSf https://raw.githubusercontent.com/sabbirba/rebuild/main/build-termux.sh)
```

### On Desktop
```console
$ git clone https://github.com/sabbirba/rebuild.git
$ cd rebuild
$ ./build.sh
```
