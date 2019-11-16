// Buttons          ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func setupButton(selector: Selector, title: String) -> UIBarButtonItem {
        let image = UIImage(named: title)?.withRenderingMode(.alwaysTemplate)
        let button = UIBarButtonItem(image: image, landscapeImagePhone: image, style: .plain, target: self, action: selector)
        return button
    }
    
    
//    @objc func reloadCVWrapperMethod() { print("*reloaded via button")
//        reloadCV()
//    }
    
    
    @objc func wrapperMethodforSecondVC() {
        gotoView(vc: kanetixVC)
    }
    
    
    @objc func wrapperMethodforFirstVC() {
        gotoView(vc: insHotlineVC)}
    
}

