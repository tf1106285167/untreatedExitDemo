//
//  SWFUIApplication.h
//  程序长时间未操作退出
//
//  Created by Simon on 16/2/25.
//  Copyright © 2016年 Pactera. All rights reserved.
//

#import <UIKit/UIKit.h>

// 定义未操作的时间，也可以从服务器上获取。
#define kApplicationTimeoutInMinutes 5

// 超时通知名字
#define kApplicationDidTimeoutNotification @"ApplicationDidTimeout"

/**
 * This is a subclass of UIApplication with the sendEvent: method
 * overridden in order to catch all touch events.
 */


@interface SWFUIApplication : UIApplication
{
    NSTimer *_myidleTimer;
}
/**
 * Resets the idle timer to its initial state. This method gets called
 * every time there is a touch on the screen.  It should also be called
 * when the user correctly enters their pin to access the application.
 */
- (void)resetIdleTimer;
@end
