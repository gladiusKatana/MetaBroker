// Animations       ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func customAnimation(_ cell: CustomCell, withDuration: Int, delay: Int, newColour: UIColor, initialColour: UIColor) {
        
        UIView.animate(
            withDuration: TimeInterval(withDuration), delay: TimeInterval(delay),
            usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIView.AnimationOptions.curveLinear, animations: {
                cell.backgroundColor = newColour
        }, completion: {(finished:Bool) in
            
            UIView.animate(
                withDuration: TimeInterval(withDuration * 2), delay: TimeInterval(delay),
                usingSpringWithDamping: 1, initialSpringVelocity: 1, options: UIView.AnimationOptions.curveLinear, animations: {
                    cell.backgroundColor = initialColour
            }, completion: nil
            )
        }
        )
    }
}

