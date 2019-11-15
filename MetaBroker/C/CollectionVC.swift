// CollectionVC     ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

class CollectionVC: UICollectionViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    var viewControllerType = CollectionViewType.first
    var backgroundColour = UIColor.clear;               var greyoutButtonIndex: Int?
    
    var downcastLayout: CustomFlowLayout?
    
    var showLoadAndAppearIndicationInConsole = false    /// use of this var may be commented out
    
    
    init(viewControllerType: CollectionViewType, backgroundColour: UIColor, greyoutButtonIndex: Int?,
         collectionViewLayout layout: UICollectionViewLayout) {
        
        super.init(collectionViewLayout: layout)
        
        self.viewControllerType = viewControllerType
        self.backgroundColour = backgroundColour
        self.greyoutButtonIndex = greyoutButtonIndex
        
        self.downcastLayout = layout as? CustomFlowLayout
    }
    
    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (downcastLayout!.loadsHorizontally) ? downcastLayout!.cols : downcastLayout!.rows
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return (downcastLayout!.loadsHorizontally) ? downcastLayout!.rows : downcastLayout!.cols
    }
    
    
    func registerAndReturnCell(_ collectionView: UICollectionView, at indexPath: IndexPath) -> CustomCell {
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.reuseIdentifier)
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.reuseIdentifier, for: indexPath) as! CustomCell
        cell = doRestOfCellProcessing(cell: cell, indexPath: indexPath)
        return cell
    }
    
    
    func registerAndReturnLeftCell(_ collectionView: UICollectionView, at indexPath: IndexPath) -> LeftAlignedCell {
        collectionView.register(LeftAlignedCell.self, forCellWithReuseIdentifier: LeftAlignedCell.reuseIdentifier)
        var leftCell = collectionView.dequeueReusableCell(withReuseIdentifier: LeftAlignedCell.reuseIdentifier, for: indexPath) as! LeftAlignedCell
        leftCell = doRestOfLeftCellProcessing(cell: leftCell, indexPath: indexPath)
        return leftCell
    }
}

