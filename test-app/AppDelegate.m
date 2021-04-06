//
//  AppDelegate.m
//  test-app
//
//  Created by dongyuwei on 2021/4/6.
//

#import "AppDelegate.h"

// see https://developer.apple.com/documentation/swift/imported_c_and_objective-c_apis/importing_swift_into_objective-c
// The header's name is generated from your product module name, followed by "-Swift.h". By default, this name is the same as your product name, with any nonalphanumeric characters replaced with an underscore (_). If the name begins with a number, the first digit is replaced with an underscore.

// also see https://medium.com/@swelzh/objective-c-call-swift-method-88927922b6b0

// also see https://tylerayoung.com/2020/12/13/creating-a-swiftui-window-in-an-objective-c-appkit-app/
#import "test_app-Swift.h" // test-app 要转换成 test_app !!!

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property(retain, nonatomic) NSWindowController *prefsWindow;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    TestSwift * testSwift = [[TestSwift alloc] init];
    [testSwift test];
    
    self.prefsWindow = [PrefsWindowObjCBridge makePrefsWindow];
    [self.prefsWindow showWindow:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
