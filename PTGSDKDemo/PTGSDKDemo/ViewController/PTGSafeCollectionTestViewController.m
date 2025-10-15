//
//  PTGSafeCollectionTestViewController.m
//  PTGSDKDemo
//
//  Created by Assistant on 2024/12/19.
//

#import "PTGSafeCollectionTestViewController.h"
#import "PTGSafeCollectionUnitTests.h"
#import <PTGAdSDK/PTGAdSDK.h>

@interface PTGSafeCollectionTestViewController ()

@end

@implementation PTGSafeCollectionTestViewController

- (void)viewDidLoad {
    // 直接运行测试
    [self runAllTests];
}

- (void)runAllTests {
    @try {
        // 运行所有单元测试
        [PTGSafeCollectionUnitTests runAllTests];
        NSLog(@"PTG安全集合测试：所有测试已成功完成");
    } @catch (NSException *exception) {
        NSLog(@"PTG安全集合测试失败：%@", exception.reason);
    }
}

@end
