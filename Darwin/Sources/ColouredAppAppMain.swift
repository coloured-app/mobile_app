import SwiftUI
import ColouredApp
import FirebaseCore

/// The entry point to the app simply loads the App implementation from SPM module.
@main struct AppMain: App, ColouredAppApp {
    @UIApplicationDelegateAdaptor(FireSideAppDelegate.self) var appDelegate
}

class FireSideAppDelegate : NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
