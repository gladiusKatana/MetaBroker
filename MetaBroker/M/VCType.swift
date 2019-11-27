// VCType           ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

enum CollectionViewType: Int {
    
    case initial = 0
    case insuranceHotline, kanetix, popupMenu
    
    func simpleDescription() -> String {
        
        switch self {
            
        case .initial:
            return "initial value to satisfy initializer of global collection view controller 'topVC'"
            
        case .insuranceHotline:
            return "first view controller"
            
        case .kanetix:
            return "second view controller"
            
        case .popupMenu:
            return "popup menu, not embedded in the navigation controller"
            
        }
    }
    
}

