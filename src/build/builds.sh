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

build_spotjfy(){
	revanced_dl
	get_patches_key "Spotjfy-revanced"
	j="i"
	get_apkpure "com.spot"$j"fy.music" "spotjfy-arm64-v8a" "spot"$j"fy-music-and-podcasts-for-android/com.spot"$j"fy.music"
	patch "spotjfy-arm64-v8a" "revanced"
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


main(){
    build_youtube
    build_youtube_music
    build_spotjfy
    build_google_photos
    build_facebook
    build_messenger
    build_instagram
}

if [ "${BASH_SOURCE[0]}" == "$0" ]; then
    main
fi
