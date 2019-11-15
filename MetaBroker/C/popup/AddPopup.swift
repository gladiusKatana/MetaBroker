// AddPopup         ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func presentPopupView(column: Int, row: Int) {                  //print("-----------------")//print("presenting popup")
        
        lockToCurrentOrientation()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            let layout = self.downcastLayout!
            let widthMultiplier = CGFloat(2)
            
            let cellWidth = layout.widthPlusSpace
            let cellHeight = layout.heightPlusSpace
            let popupMenuLayout = popupMenuViewController.downcastLayout!
            
            popupMenuLayout.cellWidth = cellWidth * widthMultiplier
            popupMenuLayout.cellHeight = cellHeight
            
            let cols = CGFloat(popupMenuLayout.cols)
            var x = cellWidth * CGFloat(layout.lockedHeaderSections + 1)
            var y = CGFloat(navBarHeight + statusBarHeight) + cellHeight * CGFloat(layout.lockedHeaderRows + 1)
            let wid = cellWidth * cols * widthMultiplier
            
            if column >= 6 {x = cellWidth * CGFloat(column - 2)}
            if row > 22 {y = CGFloat(navBarHeight + statusBarHeight) + cellHeight * CGFloat(row)}
            
            let popupCollectionViewFrame = CGRect(x: x, y: y, width: wid, height: cellHeight * 5)
            popupMenuViewController.downcastLayout?.customFrame = popupCollectionViewFrame
            popupMenuViewController.collectionView.frame = popupCollectionViewFrame
            
            let hscale = insHotlineVC.downcastLayout!.autoFitHeightScale!     //* make sure this is extensible (ie,  if column >= 6 )
            
            popupMenuViewController.collectionView?.scrollIndicatorInsets =
                UIEdgeInsets(top: popupMenuViewController.downcastLayout!.cellHeight! * hscale, left: 0, bottom: 0, right: 0)
            
            popupMenuViewController.collectionView?.scrollToItem(at: IndexPath(row: 0, section: 0), at: .bottom, animated: false)
            popupMenuViewController.collectionView.isUserInteractionEnabled = true
            
            globalWindow.addSubview(popupMenuViewController.view)     //; print("----------------adding popup")
            
            popupMenuViewController.becomeFirstResponder()
            popupMenuViewController.collectionView.reloadData()
        }
    }
}

