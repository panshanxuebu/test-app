//
//  AppDelegate.m
//  test-app
//
//  Created by dongyuwei on 2021/4/6.
//

#import "AppDelegate.h"
#import "test_app-Swift.h" // test-app 要转换成 test_app !!!

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    TestSwift * testSwift = [[TestSwift alloc] init];
    [testSwift test];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
