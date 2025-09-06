# ReBuild APKs

[![Release](https://img.shields.io/github/v/release/sabbirba/rebuild?style=flat-square)](https://github.com/sabbirba/rebuild/releases)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue?style=flat-square)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Platform](https://img.shields.io/badge/Platform-Android-3ddc84?style=flat-square&logo=android&logoColor=white)](#apps--features)

## Quick links
- [Releases](https://github.com/sabbirba/rebuild/releases) to downalod ReBuild APKs
- Read License [GPL-3.0](https://github.com/sabbirba/rebuild/blob/main/LICENSE)

## Supported Apps
<p>
  <a href="#youtube"><img alt="YouTube" src="https://img.shields.io/badge/-YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white"/></a>
  <a href="#music"><img alt="YouTube Music" src="https://img.shields.io/badge/-Music-FF0000?style=for-the-badge&logo=youtubemusic&logoColor=white"/></a>
  <a href="#googlephotos"><img alt="Google Photos" src="https://img.shields.io/badge/-Photos-4285F4?style=for-the-badge&logo=googlephotos&logoColor=white"/></a>
  <a href="#googlenews"><img alt="Google News" src="https://img.shields.io/badge/-Google%20News-4285F4?style=for-the-badge&logo=googlenews&logoColor=white"/></a>
  <a href="#photomath"><img alt="Photomath" src="https://img.shields.io/badge/-Photomath-EF2121?style=for-the-badge&logo=photomath&logoColor=white"/></a>
  <a href="#facebook"><img alt="Facebook" src="https://img.shields.io/badge/-Facebook-1877F2?style=for-the-badge&logo=facebook&logoColor=white"/></a>
  <a href="#messenger"><img alt="Messenger" src="https://img.shields.io/badge/-Messenger-0084FF?style=for-the-badge&logo=messenger&logoColor=white"/></a>
  <a href="#instagram"><img alt="Instagram" src="https://img.shields.io/badge/-Instagram-E1306C?style=for-the-badge&logo=instagram&logoColor=white"/></a>
</p>
<details>
<summary><strong>Developer Installation</strong></summary>

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

This project produces apk patched builds for a set of popular Android apps. It downloads official APKs from the configured sources and applies binary patches to enable or disable features, backport device-specific flags, or remove undesired behavior. The repository does not redistribute app source code — it modifies released APKs.

Supported apps (brief):
- YouTube — official Google YouTube app; Default patches enabled for apk builds.
- Music (YouTube Music) — YouTube Music with optional UI tweaks (e.g., hide category bar).
- Google Photos — adds Pixel preload / Pixel experience flags via patches.
- Facebook — patches to disable auto-play, in-app browser, video looping/sound, remove marketplace tab.
- Messenger — patched Messenger APK.
- Instagram — patched Instagram APK using the instagram patchset (see src/patches/instagram)
- Google News — patched Google News APK with UI and functionality improvements.
- Photomath — patched Photomath APK with premium features.

See "Apps & Features" below for per-app features.

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

<a id="googlenews"></a>
- Google News
  - Features: Default patched Google News APK with improved user experience
    - Usability: Maintains news aggregation and reading features with potential UI improvements and enhanced functionality.
    - Notes: Patches focus on improving user experience without breaking core news functionality.nd enhanced functionality.
    - Notes: Patches focus on improving user experience without breaking core news functionality.
<a id="photomath"></a>
- Photomathomath"></a>
  - Features: Default patched Photomath APK with enhanced math solving capabilities
  - Use:ures: Default patched Photomath APK with enhanced math solving capabilities
  - Use:
    - Usability: Preserves camera-based math problem solving with potential premium feature unlocks.
    - Notes: May include access to step-by-step solutions and advanced mathematical features.

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
  - Features:
    - Default patched Instagram APK; patchset may include UI tweaks, ad/remove tweaks, and behavior adjustments depending on patchset version.
  - Use:
    - Usability: Preserves core Instagram features (feed, stories, reels, messaging). Patches are intended to alter UI/ads/behaviour without breaking core functionality.
    - Notes: See src/patches/instagram for included patches and configuration. Play Store updates will replace patched APKs unless blocked.

## Credits

- [ReVanced](https://revanced.app) — patches
- [Sabbir Bin Abbas](https://sabbirba.pages.dev) — repository

## License

This repository is licensed under the [GPL-3.0](https://github.com/sabbirba/rebuild/blob/main/LICENSE).
