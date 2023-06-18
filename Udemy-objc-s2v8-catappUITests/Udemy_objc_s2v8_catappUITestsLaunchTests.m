//
//  Udemy_objc_s2v8_catappUITestsLaunchTests.m
//  Udemy-objc-s2v8-catappUITests
//
//  Created by Nate Schaffner on 6/18/23.
//

#import <XCTest/XCTest.h>

@interface Udemy_objc_s2v8_catappUITestsLaunchTests : XCTestCase

@end

@implementation Udemy_objc_s2v8_catappUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
