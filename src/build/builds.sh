#!/bin/bash
set -e
source ./src/build/utils.sh

revanced_dl(){
    safe_dl_gh "revanced-patches revanced-cli" "revanced" "latest"
}

build_youtube(){
    revanced_dl
    get_patches_key "youtube-revanced"
    if ! safe_get_apk "com.google.android.youtube" "youtube" "youtube" "google-inc/youtube/youtube" "Bundle_extract"; then
        red_log "[-] Youtube download failed — skipping Youtube build"
        return 0
    fi
    split_editor "youtube" "youtube-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
    patch "youtube-arm64-v8a" "revanced"
}

build_youtube_music(){
    revanced_dl
    get_patches_key "youtube-music-revanced"
    if ! safe_get_apk "com.google.android.apps.youtube.music" "youtube-music-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"; then
        red_log "[-] Youtube Music download failed — skipping Youtube Music build"
        return 0
    fi
    patch "youtube-music-arm64-v8a" "revanced"
}

build_google_photos(){
    revanced_dl
    get_patches_key "gg-photos"
    if ! safe_get_apk "com.google.android.apps.photos" "gg-photos-arm64-v8a" "photos" "google-inc/photos/google-photos" "arm64-v8a" "nodpi"; then
        red_log "[-] Google Photos download failed — skipping Google Photos build"
        return 0
    fi
    patch "gg-photos-arm64-v8a" "revanced"
}

build_facebook(){
    revanced_dl
    get_patches_key "facebook"
    if ! safe_get_apk "com.facebook.katana" "facebook-arm64-v8a" "facebook" "facebook-2/facebook/facebook" "arm64-v8a" "nodpi" "Android 11+"; then
        red_log "[-] Facebook download failed — skipping Facebook build"
        return 0
    fi
    patch "facebook-arm64-v8a" "revanced"
}

build_messenger(){
    revanced_dl
    get_patches_key "messenger"
    lock_version="1"
    if ! safe_get_apk "com.facebook.orca" "messenger-arm64-v8a" "messenger" "facebook-2/messenger/facebook-messenger" "arm64-v8a" "nodpi"; then
        red_log "[-] Messenger download failed — skipping Messenger build"
        return 0
    fi
    patch "messenger-arm64-v8a" "revanced"
}

build_instagram(){
    revanced_dl
    get_patches_key "instagram"
    if ! safe_get_apkpure "com.instagram.android" "instagram-arm64-v8a" "instagram-android/com.instagram.android" "Bundle"; then
        red_log "[-] Instagram download failed — skipping Instagram build"
        return 0
    fi
    patch "instagram-arm64-v8a" "revanced"
}

build_googlenews(){
    revanced_dl
    get_patches_key "GoogleNews"
    if ! safe_get_apk "com.google.android.apps.magazines" "googlenews" "google-news" "google-inc/google-news/google-news" "Bundle_extract"; then
        red_log "[-] Google News download failed — skipping Google News build"
        return 0
    fi
    split_editor "googlenews" "googlenews-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
    patch "googlenews-arm64-v8a" "revanced"
}

build_photomath(){
    revanced_dl
    get_patches_key "Photomath"
    # Try to download Photomath; if it fails, skip Photomath but don't abort the whole build
    if ! safe_get_apk "com.microblink.photomath" "photomath" "photomath" "google-inc/photomath/photomath" "Bundle"; then
        red_log "[-] Photomath download failed — skipping Photomath build to allow other builds to continue"
        return 0
    fi
    patch "photomath" "revanced"
}

case "${1:-all}" in
    Youtube)
        build_youtube
        ;;
    Music)
        build_youtube_music
        ;;
    Photos)
        build_google_photos
        ;;
    Facebook)
        build_facebook
        ;;
    Messenger)
        build_messenger
        ;;
    Instagram)
        build_instagram
        ;;
    GoogleNews)
        build_googlenews
        ;;
        Photomath)
        build_photomath
        ;;
    all|*)
        build_youtube
        build_youtube_music
        build_google_photos
        build_photomath
        build_facebook
        build_messenger
        build_instagram
        build_googlenews
        ;;
esac