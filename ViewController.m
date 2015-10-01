//
//  ViewController.m
//  TapticPeekAndPop
//
//  Created by Peter Baral on 01.10.15.
//  Copyright © 2015 Medienwerkstatt Mühlacker Verlagsges.mbH. All rights reserved.
//

#import "ViewController.h"

static int const UITapticEngineFeedbackPeek = 1001;
static int const UITapticEngineFeedbackPop = 1002;

@interface UITapticEngine : NSObject

- (void)actuateFeedback:(int)arg1;
- (void)endUsingFeedback:(int)arg1;
- (void)prepareUsingFeedback:(int)arg1;

@end

@interface ViewController ()

@end

@implementation ViewController

- (UITapticEngine *) tapticEngine {
    // http://unifiedsense.com/development/using-taptic-engine-on-ios.html
    UITapticEngine *tapticEngine = [[UIDevice currentDevice] performSelector:NSSelectorFromString(@"_tapticEngine") withObject:nil];
    return tapticEngine;
}

- (void) tapticFeedback: (int)feedbackID {
    UITapticEngine *theTapticEngine = [self tapticEngine];
    if (theTapticEngine) {
        [theTapticEngine actuateFeedback:feedbackID];
    }
}

- (IBAction) doTapticPeek:(id)sender {
    [self tapticFeedback:UITapticEngineFeedbackPeek];
}

- (IBAction) doTapticPoke:(id)sender {
    [self tapticFeedback:UITapticEngineFeedbackPop];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
