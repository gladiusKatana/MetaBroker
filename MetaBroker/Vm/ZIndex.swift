// ZIndex           ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CustomFlowLayout {
    
    func setZIndex(row: Int, section: Int, cellAttributes: UICollectionViewLayoutAttributes) {

        
        if row < lockedHeaderRows {
            cellAttributes.zIndex = 4
        }
        
        
        if section == 0 && row > 0 {
            cellAttributes.zIndex = 3
        }
        
    }
}

