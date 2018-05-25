//
//  ViewController.m
//  GZZAudioConverter
//
//  Created by Jonzzs on 2018/5/25.
//  Copyright © 2018年 Jonzzs. All rights reserved.
//

#import "ViewController.h"
#import "GZZAudioConverter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 转换为 MP3
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
    
}

@end
