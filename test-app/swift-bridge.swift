import Cocoa
import SwiftUI

class SwiftUIWindowCtrl<RootView: View>: NSWindowController {
    convenience init(rootView: RootView) {
        let hostingCtrl = NSHostingController(rootView: rootView.frame(width: 400, height: 300))
        let window = NSWindow(contentViewController: hostingCtrl)
        window.setContentSize(NSSize(width: 400, height: 300))
        self.init(window: window)
    }
}

@objc class PrefsWindowObjCBridge: NSView {
    @objc class func makePrefsWindow() -> NSWindowController {
        return SwiftUIWindowCtrl(rootView: PrefWindowView())
    }
}
