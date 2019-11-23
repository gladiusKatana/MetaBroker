// Prepare          ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CustomFlowLayout {
    
    override func prepare() {                                                               //print(".", terminator: "")
        
        checkOrientation()
        calculateAndResetSizes()
        
        if previousOrientation != currentOrientation {                                      //print("prepare(rotated to \(currentOrientation)):")
            
            /// Workaround below solves an interesting problem: try rotating device on an *auto-fitted* collection view (ie, secondVC) with & without the below line; see what happens.
            
            topVC.setupAndPresent(vc: topVC)
            
            previousOrientation = currentOrientation
        }
    }
    
    func calculateAndResetSizes() {
        (cellWidth, cellHeight) = calculateSizes(); resetDimensionIfSquareCellsEnabled()
        widthPlusSpace = cellWidth! + hSpace;       heightPlusSpace = cellHeight! + vSpace
        
        if !embeddedInNavController {compensateForNavigationAndStatusBars(forCollectionVC: popupMenuViewController, withDelta: 0)}
        else {
            var statusBarDelta = 0.0
            let statusBarTestHeight = (globalWindow.windowScene?.statusBarManager!.statusBarFrame)!.height
            if statusBarTestHeight > 20 {
                statusBarDelta = Double(statusBarTestHeight - 20)
            }
            
            compensateForNavigationAndStatusBars(forCollectionVC: topVC, withDelta: statusBarDelta)
        }
    }
    
    func compensateForNavigationAndStatusBars(forCollectionVC collectVC: UICollectionViewController, withDelta delta: Double) {
        yOffset = collectVC.collectionView!.contentOffset.y + CGFloat(navBarHeight + statusBarHeight - delta)  //print("yo: \(yOffSet)")
        xOffSet = collectVC.collectionView!.contentOffset.x
    }
}

