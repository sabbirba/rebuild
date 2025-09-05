#!/bin/bash
set -e
source ./src/build/utils.sh

revanced_dl(){
    dl_gh "revanced-patches revanced-cli" "revanced" "latest"
}

build_youtube(){
    revanced_dl
    get_patches_key "youtube-revanced"
    get_apk "com.google.android.youtube" "youtube" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
    split_editor "youtube" "youtube-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
    patch "youtube-arm64-v8a" "revanced"
}

build_youtube_music(){
    revanced_dl
    get_patches_key "youtube-music-revanced"
    get_apk "com.google.android.apps.youtube.music" "youtube-music-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
    patch "youtube-music-arm64-v8a" "revanced"
}

build_google_photos(){
    revanced_dl
    get_patches_key "gg-photos"
    get_apk "com.google.android.apps.photos" "gg-photos-arm64-v8a" "photos" "google-inc/photos/google-photos" "arm64-v8a" "nodpi"
    patch "gg-photos-arm64-v8a" "revanced"
}

build_facebook(){
    revanced_dl
    get_patches_key "facebook"
    get_apk "com.facebook.katana" "facebook-arm64-v8a" "facebook" "facebook-2/facebook/facebook" "arm64-v8a" "nodpi" "Android 11+"
    patch "facebook-arm64-v8a" "revanced"
}

build_messenger(){
    revanced_dl
    get_patches_key "messenger"
    lock_version="1"
    get_apk "com.facebook.orca" "messenger-arm64-v8a" "messenger" "facebook-2/messenger/facebook-messenger" "arm64-v8a" "nodpi"
    patch "messenger-arm64-v8a" "revanced"
}

build_instagram(){
    revanced_dl
    get_patches_key "instagram"
    get_apkpure "com.instagram.android" "instagram-arm64-v8a" "instagram-android/com.instagram.android" "Bundle"
    patch "instagram-arm64-v8a" "revanced"
}

build_duolingo_googlenews(){
    revanced_dl
    get_patches_key "Duolingo"
    lock_version="1"
    get_apk "com.duolingo" "duolingo" "duolingo-duolingo" "duolingo/duolingo-duolingo/duolingo-language-lessons" "Bundle"
    patch "duolingo" "revanced"
}

build_googlenews(){
    revanced_dl
    get_patches_key "GoogleNews"
    get_apk "com.google.android.apps.magazines" "googlenews" "google-news" "google-inc/google-news/google-news" "Bundle_extract"
    split_editor "googlenews" "googlenews-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
    patch "googlenews-arm64-v8a" "revanced"
}

build_photomath(){
    revanced_dl
    get_patches_key "Photomath"
    get_apk "com.microblink.photomath" "photomath" "photomath" "google-inc/photomath/photomath" "Bundle"
    split_editor "photomath" "photomath"
    patch "photomath" "revanced"
}

# Handle individual app builds
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
    Duolingo)
        build_duolingo_googlenews
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
        build_facebook
        build_messenger
        build_instagram
        build_duolingo_googlenews
        build_googlenews
        build_photomath
        ;;
esac