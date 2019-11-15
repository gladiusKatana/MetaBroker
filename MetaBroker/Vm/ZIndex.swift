// ZIndex           ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CustomFlowLayout {
    
    func setZIndex(row: Int, section: Int, cellAttributes: UICollectionViewLayoutAttributes) {

        
        if row < lockedHeaderRows {
            cellAttributes.zIndex = 3
        }
        
        
        if section == 0 {
            cellAttributes.zIndex = 3
        }
        
        
        if row == 0
            && section == 0
        {
            cellAttributes.zIndex = 4
        }
        
    }
}

