//
//  SPAudioRecordVC.m
//  AudioRecorder
//
//  Created by Азат on 11.03.15.
//  Copyright (c) 2015 Azat Minvaliev. All rights reserved.
//

#import "SPAudioRecordVC.h"

@interface SPAudioRecordVC () {
AVAudioRecorder *recorder;
AVAudioPlayer *player;
}
@end

@implementation SPAudioRecordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _recordView = [[[NSBundle mainBundle] loadNibNamed:@"SPAudioRecordView" owner:self options:nil] objectAtIndex:0];
    [_recordView setTranslatesAutoresizingMaskIntoConstraints:NO];

    [_topView addSubview:_recordView]; // вызываем в верхней вью интерфейс записи звука
    

    //Назначаем действия
    [_recordView.recordBtn addTarget:self action:@selector(startRecordAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
//    // Set the audio file
//    NSArray *pathComponents = [NSArray arrayWithObjects:
//                               [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject],
//                               @"MyAudioMemo.m4a",
//                               nil];
//    NSURL *outputFileURL = [NSURL fileURLWithPathComponents:pathComponents];
//    
//    // Setup audio session
//    AVAudioSession *session = [AVAudioSession sharedInstance];
//    [session setCategory:AVAudioSessionCategoryPlayAndRecord error:nil];
//    
//    // Define the recorder setting
//    NSMutableDictionary *recordSetting = [[NSMutableDictionary alloc] init];
//    
//    [recordSetting setValue:[NSNumber numberWithInt:kAudioFormatMPEG4AAC] forKey:AVFormatIDKey];
//    [recordSetting setValue:[NSNumber numberWithFloat:44100.0] forKey:AVSampleRateKey];
//    [recordSetting setValue:[NSNumber numberWithInt: 2] forKey:AVNumberOfChannelsKey];
//    
//    // Initiate and prepare the recorder
//    recorder = [[AVAudioRecorder alloc] initWithURL:outputFileURL settings:recordSetting error:NULL];
//    recorder.delegate = self;
//    recorder.meteringEnabled = YES;
//    [recorder prepareToRecord];
}

- (void)startRecordAction:(UIButton*)recordBtn
{
    [self startRecord];
}

- (void)startRecord
{
    [recorder record];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
