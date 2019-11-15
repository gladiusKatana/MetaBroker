// LeftCell         ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

class LeftAlignedCell: BaseCell {
    
    
    static let reuseIdentifier = "CustomLeftAlignedCell"
    
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        titleLabel.numberOfLines = 1
        titleLabel.sizeToFit()
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titleLabel)
        
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal,         /// Note, constraints (as well as title lable text alignment)...
            toItem: self, attribute: .left, multiplier: 1, constant: 0))   ///... are different for a LeftAlignedCell vs. CustomCell
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .centerY, relatedBy: .equal,
                                         toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

