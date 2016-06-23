//
//  SWFUIApplication.m
//  程序长时间未操作退出
//
//  Created by Simon on 16/2/25.
//  Copyright © 2016年 Pactera. All rights reserved.
//

#import "SWFUIApplication.h"

@implementation SWFUIApplication
-(void)sendEvent:(UIEvent *)event {
    
    [super sendEvent:event];
    
    if (!_myidleTimer) {
        
        [self resetIdleTimer];
        
    }
    NSSet *allTouches = [event allTouches];
    
    if ([allTouches count] > 0) {
        
        UITouchPhase phase= ((UITouch *)
                             
                             [allTouches anyObject]).phase;
        
        if (phase ==UITouchPhaseBegan) {
            [self resetIdleTimer];
        }
        
    }
    
}

//重置时钟

-(void)resetIdleTimer {
    
    if (_myidleTimer) {
        
        [_myidleTimer invalidate];
        
    }
    
    //将超时时间由分钟转换成秒数
    
    int timeout = kApplicationTimeoutInMinutes* 1;
    
    _myidleTimer = [NSTimer scheduledTimerWithTimeInterval:timeout target:self selector:@selector(idleTimerExceeded) userInfo:nil repeats:NO];
    

    
}

//当达到超时时间，发送 kApplicationTimeoutInMinutes通知

-(void)idleTimerExceeded {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kApplicationDidTimeoutNotification object:nil];
}
@end
