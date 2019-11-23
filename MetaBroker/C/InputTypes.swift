// InputTypes       ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func assignInputTypesTo(_ cell: CustomCell) { /// No need for cell class's parent; only center-aligned (non-header) cells have editable contents
        
        guard let text = cell.titleLabel.text else {print("failed to unwrap cell title label text"); return}
        
        if viewControllerType == .first {
            if text.contains("↕️") {
                cell.inputType = .dropDownMenu
                
                if !(iHDropDownMenus.isEmpty) {
                    cell.dropDownArray = iHDropDownMenus.first! //iHVehicleMakeOptions
                    iHDropDownMenus.removeFirst()
                    //print("cell \(cell.xyCoordinate) has drop-down menu: \n\(cell.dropDownArray)\n")
                }
                
            }
            else if text == "" {
                cell.inputType = .notAssigned
            }
            else {
                cell.inputType = .keyboard
            }
        }
    }
}

enum InputType: Int {
    
    case dropDownMenu = 0
    case keyboard, notAssigned
    
    func inputDescription() -> String {
        
        let baseDescription = "Input type is"
        
        switch self {
            
        case .dropDownMenu:
            return "\(baseDescription) drop-down menu"
            
        case .keyboard:
            return "\(baseDescription) keyboard"
            
        case .notAssigned:
            return "\(baseDescription) not assigned yet"
        }
    }
}

