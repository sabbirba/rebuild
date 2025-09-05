# ReBuild by Sabbir Bin Abbas

[![Release](https://img.shields.io/github/v/release/sabbirba/rebuild?style=flat-square)](https://github.com/sabbirba/rebuild/releases)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue?style=flat-square)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Platform](https://img.shields.io/badge/Platform-Android-3ddc84?style=flat-square&logo=android&logoColor=white)](#apps--features)

## Quick links
- [Releases](https://github.com/sabbirba/rebuild/releases) to downalod ReBuild APKs
- Read License [GPL-3.0](https://github.com/sabbirba/rebuild/blob/main/LICENSE)

## Supported apps (click to jump)
<p>
  <a href="#youtube"><img alt="YouTube" src="https://img.shields.io/badge/-YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white"/></a>
  <a href="#music"><img alt="YouTube Music" src="https://img.shields.io/badge/-Music-FF0000?style=for-the-badge&logo=youtubemusic&logoColor=white"/></a>
  <a href="#spotify"><img alt="Spotify" src="https://img.shields.io/badge/-Spotify-1DB954?style=for-the-badge&logo=spotify&logoColor=white"/></a>
  <a href="#googlephotos"><img alt="Google Photos" src="https://img.shields.io/badge/-Photos-4285F4?style=for-the-badge&logo=googlephotos&logoColor=white"/></a>
  <a href="#facebook"><img alt="Facebook" src="https://img.shields.io/badge/-Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white"/></a>
  <a href="#messenger"><img alt="Messenger" src="https://img.shields.io/badge/-Messenger-0084FF?style=for-the-badge&logo=facebook-messenger&logoColor=white"/></a>
  <a href="#instagram"><img alt="Instagram" src="https://img.shields.io/badge/-Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white"/></a>
</p>

<details>
<summary><strong>Developer Installation / Quick start</strong></summary>

1. Clone the repo:
   ```bash
   git clone https://github.com/sabbirba/rebuild.git
   cd rebuild
   ```

2. Install [Ninja](https://ninja-build.org/) (if not already installed):
   - Using package manager (e.g., `apt`, `brew`, `choco`):
     ```bash
     # Example for Ubuntu
     sudo apt install ninja-build
     ```
   - Or download from the [Ninja releases page](https://github.com/ninja-build/ninja/releases).

3. Install [Rust](https://www.rust-lang.org/tools/install) (if not already installed):
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   ```

4. Install [Android SDK Command-line Tools](https://developer.android.com/studio#command-tools) (if not already installed):
   - Download the Command-line Tools only option.
   - Extract and set up in `ANDROID_SDK_ROOT` (e.g., `~/Android/Sdk`).

5. Install required Android SDK packages:
   ```bash
   sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"
   ```

6. Install [Git](https://git-scm.com/downloads) (if not already installed):
   - Download and install from the official website.

7. Install [Python 3](https://www.python.org/downloads/) (if not already installed):
   - Download and install from the official website.

8. Install [Docker](https://www.docker.com/get-started) (if not already installed):
   - Follow the official installation guide for your platform.

9. Build the project:
   ```bash
   ./build.sh
   ```

10. Find the built APKs in the `output/` directory.

</details>

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

This repository produces APK patched builds for the apps below. For each app: Features lists the patches / modifications applied;

<a id="youtube"></a>
- YouTube
  - Features: Default patches enabled (APK build)
  - Use:
    - Usability: UI and behavior remain the official app; patches tweak/enable flags and remove unwanted behaviors while preserving core playback, subscriptions, and recommendations.
    - Notes: Play Store updates will replace the patched APK unless you block them.
<a id="music"></a>
- Music (YouTube Music)
  - Features:
    - Hide category bar
  - Use:
    - Usability: Same playback and library features as the official app; optional UI tweaks (e.g., hiding the category bar) reduce clutter while keeping search, playlists, and playback intact.
    - Notes: UI patches are cosmetic and reversible by installing the stock APK.
<a id="spotify"></a>
- Spotify
  - Features: standard patched APK (no special patches listed)
  - Use:
    - Usability: Retains standard Spotify experience (playlists, search, offline if available for your account); patches aim for compatibility/behavior tweaks without altering account or subscription requirements.
    - Notes: Do not expect subscription changes — patches do not enable paid features.
<a id="googlephotos"></a>
- Google Photos
  - Features:
    - com.google.android.apps.photos.nexus_preload
    - com.google.android.apps.photos.NEXUS_PRELOAD
    - com.google.android.feature.PIXEL_2021_EXPERIENCE
    - com.google.android.feature.PIXEL_2022_EXPERIENCE
  - Use:
    - Usability: Enables Pixel/preview features (preloads, experience flags) on non‑Pixel devices to mimic Pixel behavior; core gallery, backup, and editing functions remain unchanged.
    - Notes: Some Pixel-only cloud features may still require Google account/device compatibility.
<a id="facebook"></a>
- Facebook
  - Features:
    - Disable auto-play videos
    - Disable in-app browser
    - Disable video looping
    - Disable video sound by default
    - Remove marketplace tab
  - Use:
    - Usability: Reduces distracting behaviors (autoplay, in-app browser) for a cleaner, less data-heavy experience while keeping news feed, messaging, and notifications functional.
    - Notes: Some feature toggles may be visible in-app depending on Facebook's UI version.
<a id="messenger"></a>
- Messenger
  - Features: default patched APK for Messenger
  - Use:
    - Usability: Preserves core messaging, calls, and notifications; patches focus on removing undesirable behaviors while keeping app functionality intact.
    - Notes: Keep Messenger updated manually if desired.
<a id="instagram"></a>
- Instagram
  - Features: default patched APK for Instagram
  - Use:
    - Usability: Maintains the normal Instagram experience (feed, stories, DMs); patches target performance/usability tweaks and removal of some annoyances without changing core social features.
    - Notes: Some server-side features remain unaffected by APK patches.

## Developers / Credits

- [sabbirba](https://github.com/sabbirba10) — repository maintainer
- j-hc — ReBuild upstream work

## License

This repository is licensed under the GNU General Public License v3.0 (GPL-3.0). See the LICENSE file for the full text or view it online: https://github.com/sabbirba/rebuild/blob/main/LICENSE
