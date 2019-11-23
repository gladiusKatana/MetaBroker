// PopupVC          ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

class PopupMenuVC: UICollectionViewController {
    
    var downcastLayout : CustomFlowLayout?
    
    var popupContents = [Any]()
    
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
        self.downcastLayout = layout as? CustomFlowLayout
    }
    
    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if popupContents.count != 0 {
            return popupContents.count
        } else {return (downcastLayout!.loadsHorizontally) ? downcastLayout!.cols : downcastLayout!.rows}
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        if popupContents.count != 0 {
            return popupContents.count
        } else {return (downcastLayout!.loadsHorizontally) ? downcastLayout!.rows : downcastLayout!.cols}
    }
    
    
    func keepScrollIndicatorsVisible() {
        timerToShowScrollIndicator = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(self.showScrollIndicatorsInContacts), userInfo: nil, repeats: true)
    }
    
    @objc func showScrollIndicatorsInContacts() {
        UIView.animate(withDuration: 0.01) {
            self.collectionView?.flashScrollIndicators()
        }
    }
    
}

