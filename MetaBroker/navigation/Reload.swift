// Reload           ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    
    @objc func reloadCV() {                                                 print("↺")
        
        self.collectionView.reloadData()
        
    }
    
    
    //    func reloadCollectionViewAfterDelay(_ timeDelay: Double) {              //print("↺d")
    //
    //        DispatchQueue.main.asyncAfter(deadline: .now() + timeDelay) {
    //            self.collectionView.reloadData()
    //        }
    //    }
    
}

