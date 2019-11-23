// ZIndex           ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CustomFlowLayout {
    
    func setZIndex(row: Int, section: Int, cellAttributes: UICollectionViewLayoutAttributes) {

        
        if row < lockedHeaderRows && section == 0 {
            cellAttributes.zIndex = 4
        }
        
        
        if row < lockedHeaderRows && section > 0 {
            cellAttributes.zIndex = 3
        }
        
        
        if section == 1 && row > 0 {
            cellAttributes.zIndex = 2
        }
        
    }
}

