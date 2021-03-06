// AppDelegate      ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

@UIApplicationMain class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    lazy var orientationLock = UIInterfaceOrientationMask.all       /// set orientations you want allowed by default
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return orientationLock
    }
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        modelName = UIDevice.modelName
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = defaultBackgroundColour
        window?.makeKeyAndVisible()
        
        globalWindow = window!
        
        backgroundVC.view.backgroundColor = defaultBackgroundColour /// must match window's background colour (or be clear), for rotating landscape- > portrait
        backgroundVC.view.frame = window?.frame ?? zeroFrame
        
        UINavigationBar.appearance().barTintColor = platinum
        UINavigationBar.appearance().shadowImage = UIImage()
        
        getOrientationAtLaunch()                                    ; print("launching on \(modelName) in \(launchOrientation) orientation")
        
//        for _ in (0 ..< insHotlineLayout.rows - iHFormFields.count) { /// appends default empty strings to contents arrays if they are too short
//            iHFormFields.append("", "", "", "", "")
//            print("appended period to InsuranceHotline titles")
//        }
        
        //print("Insurance Hotline field contents: \(iHFormFields)")
        
        return true
    }
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        navController = UINavigationController(rootViewController: backgroundVC) /// temporary, unseen initial root view controller
        window?.rootViewController = navController                  //; print("VCs*: \(String(describing: nav Controller?.viewControllers))")
        
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            insHotlineVC.setupAndPresent(vc: insHotlineVC)                    /// just need a uiviewcontroller (any of them) to call this method
        }
        
        populateVehicleYearOptions()
        
        return true
    }
}

