# GZZAudioConverter

A simple library to convert audio format（一个用来转换音频格式的库，支持 MP3）

## Description

大多数代码源自于 [ExtAudioFileConverter](https://github.com/lixing123/ExtAudioFileConverter)，因为网上关于音频格式转换的太少了，而且还特别麻烦，故封装为 `Cocoapods` 库，方便使用。

## Installation

 仅支持 `CocoaPods`，将如下代码加入 `Podfile` 文件中。

```
pod 'GZZAudioConverter'
```

## Useage

```
// 例如：转换为 MP3
dispatch_async(dispatch_queue_create(NULL, DISPATCH_QUEUE_SERIAL), ^ {
    GZZAudioConverter *converter = [[GZZAudioConverter alloc] init];
    converter.inputFile = @"/var/mobile/Containers/Data/Application/xxx/Documents/xxx.wav";
    converter.outputFile = @"/var/mobile/Containers/Data/Application/xxx/Documents/xxx.mp3";
    converter.outputFileType = kAudioFileMP3Type;
    converter.outputFormatID = kAudioFormatMPEGLayer3;
    BOOL success = [converter convert];
    dispatch_async(dispatch_get_main_queue(), ^ {
        if (success) {
            NSLog(@"转换成功");
        } else {
            NSLog(@"转换失败");
        }
    });
});
```

## Methods

注意：文件格式和数据格式要根据你要转换的音频格式来设置，不同文件格式对应的数据格式是不同的，这是关于文件格式和数据格式的 [说明文档](https://developer.apple.com/library/content/documentation/MusicAudio/Conceptual/CoreAudioOverview/SupportedAudioFormatsMacOSX/SupportedAudioFormatsMacOSX.html) 。

```
// 采样率
converter.outputSampleRate = 44100;

// 声道数
converter.outputNumberChannels = 2;

// 位深
converter.outputBitDepth = BitDepth_16;

// 文件格式
converter.outputFileType = kAudioFileWAVEType;

// 数据格式
converter.outputFormatID = kAudioFormatLinearPCM;
```



