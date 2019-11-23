// AddPopup         ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func presentPopupView(column: Int, row: Int, contents: [Any]) {                  //print("-----------------")//print("presenting popup")
        
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
            let wid = cellWidth * cols * widthMultiplier
            
            let ip = IndexPath(row: row, section: column)
            let attribute = UICollectionViewLayoutAttributes(forCellWith: ip)
            
            var x = attribute.frame.minX + (globalWindow.frame.width - wid) / 2
            var y = attribute.frame.minY + CGFloat(navBarHeight + statusBarHeight) + cellHeight * CGFloat(row + 1)
            
            if column >= 6 {x = cellWidth * CGFloat(column - 2)}
            if row > 22 {y = CGFloat(navBarHeight + statusBarHeight) + cellHeight * CGFloat(row)}
            
            let popupCollectionViewFrame = CGRect(x: x, y: y, width: wid, height: cellHeight * 5)
            popupMenuViewController.downcastLayout?.customFrame = popupCollectionViewFrame
            popupMenuViewController.collectionView.frame = popupCollectionViewFrame
            
            popupMenuViewController.collectionView?.scrollToItem(at: IndexPath(row: 0, section: 0), at: .bottom, animated: false)
            popupMenuViewController.collectionView.isUserInteractionEnabled = true
            
            popupMenuViewController.downcastLayout?.rows = contents.count
            popupMenuViewController.popupContents = contents
            
//            globalWindow.addSubview(popupMenuViewController.view)     //; print("----------------adding popup")
            topVC.view.addSubview(popupMenuViewController.view)
                
//            self.navigationController?.present(popupMenuViewController, animated: false)
            
//            print("popup window: \(popupMenuViewController.view.window)")
            
            topVC.resignFirstResponder()
            popupMenuViewController.becomeFirstResponder()
            popupMenuViewController.collectionView.reloadData()
        }
    }
}

