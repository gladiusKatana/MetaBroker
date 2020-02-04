// PLifeCycle       ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension PopupMenuVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = popupMenuCellColour
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.popupReuseIdentifier)
        collectionView?.isUserInteractionEnabled = true
        
        collectionView?.showsHorizontalScrollIndicator = false
        keepScrollIndicatorsVisible()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {     print("popup appeared...")
        super.viewDidAppear(animated)
        
        let hscale = insHotlineVC.downcastLayout!.autoFitHeightScale
        let popupLayout = self.downcastLayout!
        collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: popupLayout.cellHeight! * hscale! * CGFloat(popupLayout.lockedHeaderRows),
                                                             left: 0, bottom: 0, right: 0)
    }
    
    
    func dismissPopupMenu() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            
            topVC.collectionView.isScrollEnabled = true
            
            popupMenuViewController.view.removeFromSuperview()
            
//            topVC.navigationController?.dismiss(animated: false)
            
            popupMenuViewController.resignFirstResponder()
            topVC.becomeFirstResponder()
        }
    }
}

