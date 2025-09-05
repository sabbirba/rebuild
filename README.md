# ReBuild by Sabbir Bin Abbas

<p align="center">
  <img src="https://raw.githubusercontent.com/sabbirba/rebuild/main/assets/logo.png" alt="ReBuild" width="160" height="160"/>
</p>

<p align="center">
  <a href="https://github.com/sabbirba/rebuild/releases"><img src="https://img.shields.io/github/v/release/sabbirba/rebuild?style=flat-square" alt="Release"/></a>
  <a href="https://github.com/sabbirba/rebuild/blob/main/LICENSE"><img src="https://img.shields.io/badge/License-GPLv3-blue?style=flat-square" alt="License"/></a>
  <a href="https://github.com/sabbirba/rebuild/actions"><img src="https://img.shields.io/github/workflow/status/sabbirba/rebuild/CI?style=flat-square" alt="CI"/></a>
  <a href="https://github.com/sponsors/sabbirba10"><img src="https://img.shields.io/badge/Support-Sponsor-ff69b4?style=flat-square" alt="Sponsor"/></a>
</p>

<p align="center">
  <a href="#quick-links">Quick links</a> •
  <a href="#apps--features">Apps & Features</a> •
  <a href="#developer-installation--quick-start">Developer / Quick start</a> •
  <a href="#demo">Demo</a> •
  <a href="#contributing">Contributing</a>
</p>

---

## Quick links
- Download latest APK: <a href="https://github.com/sabbirba/rebuild/releases/latest">Releases (latest)</a>
- License: [GPL-3.0](https://github.com/sabbirba/rebuild/blob/main/LICENSE)

## Demo
<p align="center">
  <!-- Replace with an actual demo GIF in assets/ -->
  <img src="https://raw.githubusercontent.com/sabbirba/rebuild/main/assets/demo.gif" alt="ReBuild demo" width="720"/>
</p>

## What is ReBuild?
ReBuild downloads official Android APKs and applies binary patches to enable/disable features, backport device flags, or remove undesired behavior. It does not redistribute source code — only patches released APKs.

## Apps & Features (summary)
- YouTube — default APK patches
- YouTube Music — hide category bar (optional)
- Spotify — compatibility / UX tweaks
- Google Photos — Pixel preload & Pixel experience flags
- Facebook — disable autoplay, in-app browser, video looping, sound; remove marketplace
- Messenger — patched APK
- Instagram — UX & performance tweaks

(See detailed per-app sections below.)

## Developer installation / Quick start (macOS)
<details>
<summary><strong>One-liner (macOS)</strong></summary>

```bash
# macOS quick setup (interactive)
git clone https://github.com/sabbirba/rebuild.git && cd rebuild
brew install ninja rust python3 android-sdk
# ensure ANDROID_SDK_ROOT is set, then:
sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"
./build.sh
# APKs will be in output/
```
</details>

<details>
<summary><strong>Full steps (cross-platform)</strong></summary>

1. Clone:
   ```bash
   git clone https://github.com/sabbirba/rebuild.git
   cd rebuild
   ```

2. Install dependencies:
   - macOS (Homebrew):
     ```bash
     brew install ninja rust python3
     ```
     Install Android SDK command-line tools from:
     https://developer.android.com/studio#command-tools
     Set ANDROID_SDK_ROOT, e.g.:
     ```bash
     export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
     PATH="$ANDROID_SDK_ROOT/cmdline-tools/latest/bin:$PATH"
     sdkmanager "platform-tools" "platforms;android-30" "build-tools;30.0.3"
     ```

   - Linux / Windows: see official installers for Ninja, Rust, Python, Docker and Android SDK.

3. Build:
   ```bash
   ./build.sh
   ```
   Output APKs appear in output/.

</details>

## Interactive features in README
- Clickable badges and release link for quick APK download
- Collapsible quick-start sections for a cleaner view
- Demo GIF to showcase changes (add assets/demo.gif to repository)

## Contributing
- Fork, create a branch, make changes, open a PR.
- Add tests for new scripts where applicable.
- Code style: keep shell scripts POSIX-friendly; prefer bash on macOS.

## Credits
- sabbirba — maintainer
- j-hc — upstream work

## License
GPL-3.0 — see LICENSE file.

<!-- Footer: small navigation -->
<p align="center"><sub>Built for tinkering — test on a disposable device and keep backups. ReBuild modifies released APKs; use responsibly.</sub></p>
