cd android
fastlane beta

cd ../ios
fastlane beta

cd ..

echo 'Updated Version Completed!!'
cat VersionNum && echo -n '.' && cat VersionCode && echo ''