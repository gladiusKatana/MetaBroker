// ZIndex           ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CustomFlowLayout {
    
    func setZIndex(row: Int, section: Int, cellAttributes: UICollectionViewLayoutAttributes) {
        
        if row < lockedHeaderRows {
            cellAttributes.zIndex = 3
        }
        
        if section < lockedHeaderSections {
            cellAttributes.zIndex = 3
        }
        
        if section < lockedHeaderSections && row < lockedHeaderRows {
            cellAttributes.zIndex = 4
        }
        
        if section == 0 && row == 0 { /// Doing this because on view controller #2, top-left (0,0) cell is a left-aligned cell, with a long title label, which is only readable if cell has high zIndex
            cellAttributes.zIndex = 4
        }
        
    }
}

