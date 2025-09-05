# ReBuild

Get the [latest APK releases](https://github.com/sabbirba/rebuild/releases).

# About the apps

This project produces APK-only patched builds for a set of popular Android apps. It downloads official APKs from the configured sources and applies binary patches to enable or disable features, backport device-specific flags, or remove undesired behavior. The repository does not redistribute app source code — it modifies released APKs.

Supported apps (brief):
- YouTube — official Google YouTube app; Default patches enabled for APK-only builds.
- Music (YouTube Music) — YouTube Music with optional UI tweaks (e.g., hide category bar).
- Spotify — patched Spotify APK with basic modifications.
- Google Photos — adds Pixel preload / Pixel experience flags via patches.
- Facebook — patches to disable auto-play, in-app browser, video looping/sound, remove marketplace tab.
- Messenger — patched Messenger APK.
- Instagram — patched Instagram APK.

See "Apps & Features" below for per-app features and example config.toml snippets.

# Apps & Features

This repository produces APK-only patched builds for the apps below. For each app: Features lists the patches / modifications applied; Use shows the minimal config.toml snippet to enable or configure that app.

- YouTube
  - Features: Default patches enabled (APK-only build)
  - Use:
    ```toml
    [YouTube]
    build-mode = "apk"
    version = "auto"
    arch = "arm64-v8a"
    included-patches = ""
    excluded-patches = ""
    ```

- Music (YouTube Music)
  - Features:
    - Hide category bar
  - Use:
    ```toml
    [Music]
    version = "auto"
    arch = "arm64-v8a"
    included-patches = "'Hide category bar'"
    ```

- Spotify
  - Features: standard patched APK (no special patches listed)
  - Use:
    ```toml
    [Spotify]
    version = "auto"
    arch = "arm64-v8a"
    ```

- Google Photos
  - Features:
    - com.google.android.apps.photos.nexus_preload
    - com.google.android.apps.photos.NEXUS_PRELOAD
    - com.google.android.feature.PIXEL_2021_EXPERIENCE
    - com.google.android.feature.PIXEL_2022_EXPERIENCE
  - Use:
    ```toml
    [GooglePhotos]
    build-mode = "apk"
    version = "auto"
    arch = "arm64-v8a"
    included-patches = "'com.google.android.apps.photos.nexus_preload' 'com.google.android.apps.photos.NEXUS_PRELOAD' 'com.google.android.feature.PIXEL_2021_EXPERIENCE' 'com.google.android.feature.PIXEL_2022_EXPERIENCE'"
    ```

- Facebook
  - Features:
    - Disable auto-play videos
    - Disable in-app browser
    - Disable video looping
    - Disable video sound by default
    - Remove marketplace tab
  - Use:
    ```toml
    [Facebook]
    enabled = true
    version = "auto"
    arch = "arm64-v8a"
    included-patches = "'Disable auto-play videos' 'Disable in-app browser' 'Disable video looping' 'Disable video sound by default' 'Remove marketplace tab'"
    ```

- Messenger
  - Features: default patched APK for Messenger
  - Use:
    ```toml
    [Messenger]
    enabled = true
    version = "auto"
    arch = "arm64-v8a"
    ```

- Instagram
  - Features: default patched APK for Instagram
  - Use:
    ```toml
    [Instagram]
    version = "auto"
    arch = "arm64-v8a"
    ```

## Developers / Credits

- [sabbirba10](https://github.com/sabbirba10) — repository maintainer
- j-hc — original ReBuild project and upstream work

## License

This repository is licensed under the GNU General Public License v3.0 (GPL-3.0). See the LICENSE file for the full text or view it online: https://www.gnu.org/licenses/gpl-3.0.en.html
