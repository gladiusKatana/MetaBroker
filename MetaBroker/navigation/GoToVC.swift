// GoToVC           ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func gotoView(vc: CollectionVC) {                                                       //print("\nshowing vc \(vc)")
        
        ///firstVC.downcastLayout?.autoFitHeightScale = 1
        
        if topVC != vc {
            
//            if topVC.backgroundColour != .white { /// if it is, seeing any other colour for a split second (ie, background view), is visually jarring
//                globalWindow.backgroundColor = vc.backgroundColour /// so window background colour (what you see when no view controller is presented), matches new top vc's
//                backgroundVC.view.backgroundColor = vc.backgroundColour                     ///print("reset background colours to \(vc.backgroundColour)")
//            }
            
            setupAndPresent(vc: vc)
            
        } else {print("you're already looking at the '\(vc.viewControllerType)' view")}
    }
    
    
    func setupAndPresent(vc: UICollectionViewController) {                                  //print("setup and present")
        dismissNavController {
            let newVC = UINavigationController(rootViewController: vc)
            
            newVC.modalPresentationStyle = .fullScreen  /// disabling this results in the new (default) scene-based view, and changes navigation bar positioning
            
            navController?.present(newVC, animated: false, completion: nil) 
        }
    }
    
    
    func dismissNavController(completion: @escaping () -> ()) {
        navController?.dismiss(animated: false, completion: nil)
        completion()
    }
    
}

