// PULifeCycle      ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension PopupMenuVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.popupReuseIdentifier)
        collectionView?.isUserInteractionEnabled = true
        
        collectionView?.showsHorizontalScrollIndicator = false
        keepScrollIndicatorsVisible()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let hscale = insHotlineVC.downcastLayout!.autoFitHeightScale
        let popupLayout = self.downcastLayout!
        collectionView?.scrollIndicatorInsets = UIEdgeInsets(top: popupLayout.cellHeight! * hscale! * CGFloat(popupLayout.lockedHeaderRows),
                                                             left: 0, bottom: 0, right: 0)
    }
    
    
    func dismissPopupMenu() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            popupMenuViewController.view.removeFromSuperview()
            
            popupMenuViewController.resignFirstResponder()
            topVC.becomeFirstResponder()
        }
    }
    
}

