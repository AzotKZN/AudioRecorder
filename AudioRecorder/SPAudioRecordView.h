//
//  SPAudioRecordView.h
//  AudioRecorder
//
//  Created by Азат on 11.03.15.
//  Copyright (c) 2015 Azat Minvaliev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPAudioRecordView : UIView
@property (strong, nonatomic) IBOutlet UIButton *backBtn;

@property (strong, nonatomic) IBOutlet UIButton *saveBtn;

@property (strong, nonatomic) IBOutlet UIButton *recordBtn;

@property (strong, nonatomic) IBOutlet UILabel *topTimerLbl;

@property (strong, nonatomic) IBOutlet UISlider *horizontalTimeLine;



@end
