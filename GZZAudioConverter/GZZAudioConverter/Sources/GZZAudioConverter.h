//
//  GZZAudioConverter.h
//  GZZAudioConverter
//
//  Created by Jonzzs on 2018/5/25.
//  Copyright © 2018年 Jonzzs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

enum BitDepth {
    BitDepth_8  = 8,
    BitDepth_16 = 16,
    BitDepth_24 = 24,
    BitDepth_32 = 32
};

@interface GZZAudioConverter : NSObject

// Must set
@property (nonatomic, retain) NSString *inputFile; // Absolute path
@property (nonatomic, retain) NSString *outputFile; // Absolute path

// Set by output audio format
@property (nonatomic, assign) AudioFormatID outputFormatID; // Default Linear PCM
@property (nonatomic, assign) AudioFileTypeID outputFileType; // Default kAudioFileCAFType

// Optional
@property (nonatomic, assign) int outputSampleRate; // Default 44100.0
@property (nonatomic, assign) int outputNumberChannels; // Default 2
@property (nonatomic, assign) enum BitDepth outputBitDepth; // Default BitDepth_16

// Start convert (Suggest open thread)
- (BOOL)convert;

@end
