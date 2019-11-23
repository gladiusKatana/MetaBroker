// RotateLock       ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

struct AppUtility {
    
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.orientationLock = orientation
        }
        else {print("[AppUtility] error casting app delegate instance")}
    }
    
    static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation: UIInterfaceOrientation) {
        self.lockOrientation(orientation)
        UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
    }
}

func lockToCurrentOrientation() {
    let appDelegate = AppDelegate()
    let orientation = appDelegate.statusBarOrientation
    let rawOrientation = orientation!.rawValue                                      //; print("orientation raw value: \(rawOrientation)")
    
    let masks = [UIInterfaceOrientationMask.portrait, UIInterfaceOrientationMask.portrait, UIInterfaceOrientationMask.portraitUpsideDown, UIInterfaceOrientationMask.landscapeLeft, UIInterfaceOrientationMask.landscapeRight]
    
    /// seems value of  mask  cannot be set by passing in an unsigned int (raw value) corresponding to the current orientation, need to set it to a UIInterfaceOrientationMask value (the case itself)
    //let mappingRawValues = [0, 0, 3, 1, 2]  ///UIInterfaceOrientationMask raw values mapping to those of UIInterfaceOrientation
    //let mask = UIInterfaceOrientationMask(rawValue: UInt(mappingRawValues[rawOrientation]))
    
    let mask = masks[rawOrientation]                                                //; print("orientation mask: \(mask.rawValue)")
    
    AppUtility.lockOrientation(mask, andRotateTo: orientation!)
    /// cases:
    /// UIInterfaceOrientation :            [unknown, portrait, portraitUpsideDown, landscapeLeft, landscapeRight]                                              // [0, 1, 2, 3, 4]
    /// UIInterfaceOrientationMask :    [portrait, landscapeLeft, landscapeRight, portraitUpsideDown, landscape, all, allButUpsideDown]      // [0, 0, 3, 1, 2]
}

extension AppDelegate {
    var statusBarOrientation: UIInterfaceOrientation? {
        get {
            guard let orientation = UIApplication.shared.windows.first?.windowScene?.interfaceOrientation else {
                #if DEBUG
                fatalError("Could not obtain UIInterfaceOrientation from a valid windowScene")
                #else
                return nil
                #endif
            }
            return orientation
        }
    }
}

