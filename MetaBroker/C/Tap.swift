// Tap              ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 didSelectItemAt indexPath: IndexPath) {
        
        let cell = collectionView.cellForItem(at: indexPath) as! BaseCell /// handle tapping left-aligned cells
        
        let layout = downcastLayout!
        let row = indexPath.item
        let column = indexPath.section
        
        if row >= layout.lockedHeaderRows && column >= layout.lockedHeaderSections {
            
            print("selected cell at index path \(indexPath)")
            
            //            let printCellAlso = false
            //
            //            if printCellAlso {
            //                print("cell: \(cell)")  /// This causes a warning if bool is false, but that's OK (you probably don't want to print the cell itself but you can if you want)
            //            }
            
            guard let cell = cell as? CustomCell else {print("error downcasting cell"); return}
            
            customAnimation(cell, withDuration: 1, delay: 0, newColour: lightNavy, initialColour: cell.cellColour)
            
//            DispatchQueue.main.asyncAfter(deadline: .now()) {
//                self.presentPopupView(column: column, row: row)
//            }
            
        }
    }
}

