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
2. Install tooling (examples on macOS):
   ```bash
   # Homebrew examples
   brew install ninja python rustup
   rustup default stable
   ```
3. Android SDK (example for macOS):
   - Install Command-line Tools and set ANDROID_SDK_ROOT (e.g. ~/Library/Android/sdk)
   ```bash
   sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"
   ```
4. Build:
   ```bash
   ./build.sh
   ```
5. Output:
   - Built APKs will be in the `output/` directory.

Build notes
- The project applies binary patches to official APKs; it does not include app source code.
- Play Store updates will replace patched APKs unless updates are blocked.

Usage & output
- Find generated APKs in output/
- Install on device with adb:
  ```bash
  adb install -r output/<app>-patched.apk
  ```

Apps & Features
- YouTube
  - Default APK-only patches; preserves core playback and recommendations.
- YouTube Music
  - Optional UI tweaks (e.g., hide category bar).
- Spotify
  - Standard patched APK — compatibility tweaks only.
- Google Photos
  - Enables Pixel-related flags (nexus_preload, PIXEL_2021_EXPERIENCE, PIXEL_2022_EXPERIENCE).
- Facebook
  - Disable autoplay, in-app browser, looping, default video sound; remove marketplace tab.
- Messenger
  - Default patched APK with behavior tweaks.
- Instagram
  - Usability and performance patches; core social features preserved.

Contributing & credits
- Maintainer: sabbirba (https://github.com/sabbirba10)
- Upstream: j-hc and others
- Contributions: open issues and PRs on GitHub. Follow repository coding guidelines and sign the contributor license if required.

Security & legal
- ReBuild modifies distributed APKs. Ensure you have rights to install modified binaries on your devices.
- Licensed under GPL-3.0 — see LICENSE for terms.

License
- GNU General Public License v3.0 — https://github.com/sabbirba/rebuild/blob/main/LICENSE
