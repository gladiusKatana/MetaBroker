// AppLifecycle     ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension AppDelegate {
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("🔅became active")
        
        checkOrientation()
    }
    
    
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("🌔will enter foreground\n")
    }
    
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("\n⏸will resign active")
    }
    
    
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("\n🌘entered background")
    }
    
    
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("terminated")
    }
    
}

