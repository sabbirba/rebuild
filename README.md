# ReBuild

Get the [latest APKs release](https://github.com/sabbirba/rebuild/releases).


# Apps & Features

This repository produces APK-only patched builds for the following apps.

- YouTube
  - build-mode: apk
  - version: auto
  - arch: arm64-v8a
  - download: apkmirror / uptodown / archive
  - included patches: none specified
  - excluded patches: none specified

- Music (YouTube Music)
  - version: auto
  - arch: arm64-v8a
  - download: apkmirror / uptodown / archive
  - included patches: "Hide category bar"

- Spotify
  - enabled: (default)
  - download: uptodown / archive

- GooglePhotos
  - build-mode: apk
  - version: auto
  - arch: arm64-v8a
  - download: apkmirror / uptodown
  - included features/patches:
    - com.google.android.apps.photos.nexus_preload
    - com.google.android.apps.photos.NEXUS_PRELOAD
    - com.google.android.feature.PIXEL_2021_EXPERIENCE
    - com.google.android.feature.PIXEL_2022_EXPERIENCE

- Facebook
  - enabled: true
  - version: auto
  - arch: arm64-v8a
  - download: apkmirror
  - included patches/features:
    - Disable auto-play videos
    - Disable in-app browser
    - Disable video looping
    - Disable video sound by default
    - Remove marketplace tab

- Messenger
  - enabled: true
  - version: auto
  - arch: arm64-v8a
  - download: apkmirror

- Instagram
  - version: auto
  - arch: arm64-v8a
  - download: apkmirror

Notes:
- The exact downloads and patches come from `config.toml`. Some entries may contain multiple download URLs; the active value is the last one defined.
- For full build

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
