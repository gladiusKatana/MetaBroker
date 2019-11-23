// TapPopup         ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension PopupMenuVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as! CustomCell
        
        let layout = downcastLayout!
        let row = indexPath.item
        let column = indexPath.section
        
        cell.backgroundColor = lightNavy
        
        print("selected popup cell at index path \(indexPath)\n")
        
        dismissPopupMenu()
        
        AppUtility.lockOrientation(.all)
        
        if row >= layout.lockedHeaderRows && column >= layout.lockedHeaderSections {
            
            //            let printCellAlso = false
            //
            //            if printCellAlso {
            //                print("cell: \(cell)")  /// This causes a warning if bool is false, but that's OK (you probably don't want to print the cell itself but you can if you want)
            //            }
            
        }
        else {
            print("selected popup menu header")
        }
    }
}

