# Xcode16 update issues
> notes: ***xcode16 need macos 14.5 at least. But you can install iOS18 Runtime on lower Xcode version with sripts at last***

## Resource link in Seafile:

[MacOS 14.7](http://10.79.159.132:8000/f/602e56efd3f7401baa7e/?dl=1)

[Xcode 16](http://10.79.159.132:8000/f/d37e220debd743d2bf73/?dl=1) 

[iOS 18 Runtime](http://10.79.159.132:8000/f/54a2fb1e0e3748e9b7ba/?dl=1) 

## Xcode Runtime install issue

> To install a dmg runtime file, you need to.follow these steps below.`

On Xcode 15 and earlier, you can use
```
xcrun simctl runtime add "~/Downloads/<simulator-runtime-name>.dmg”
```
On Xcode 16:
```
    xcode-select -s /Applications/Xcode-beta.app
    xcodebuild -runFirstLaunch
    xcodebuild -importPlatform "~/Downloads/watchOS 9 beta Simulator Runtime.dmg"
```
