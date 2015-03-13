//
//  SPAudioRecordVC.h
//  AudioRecorder
//
//  Created by Азат on 11.03.15.
//  Copyright (c) 2015 Azat Minvaliev. All rights reserved.
//

#import "ViewController.h"
#import "SPAudioRecordView.h"
#import <AVFoundation/AVFoundation.h>

@interface SPAudioRecordVC : ViewController <AVAudioPlayerDelegate, AVAudioRecorderDelegate, UITableViewDataSource, UITableViewDelegate, UITextViewDelegate, UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIView *topView;
@property (strong, nonatomic) SPAudioRecordView *recordView;


@end

