import UIKit
import MyModule

@UIApplicationMain
class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions: [UIApplication.LaunchOptionsKey : Any]?
    ) -> Bool {
        print("\(getStringFromMyModule())")
        
        return true
    }
}
