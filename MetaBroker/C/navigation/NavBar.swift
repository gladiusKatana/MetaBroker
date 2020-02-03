// NavBar           ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func setupNavBarButtons(_ greyoutColour: UIColor?, greyoutButtonIndex: Int?) {   //print("setting up nav bar buttons")
        
        let firstButton = setupButton(selector: #selector(wrapperMethodforFirstVC), title: "timetableImage")
        let secondButton = setupButton(selector: #selector(wrapperMethodforSecondVC), title: "calendarImage")
        
        let reloadButton = setupButton(selector: #selector(reloadCVWrapperMethod), title: "reloadButton") /// this button is hidden, only used for debugging
        
        var barButtonColours = [UIColor]()
        
        let buttons = [secondButton, firstButton, reloadButton] /// buttons go from first... nth from left to right; reload button is invisible
        
        navigationItem.rightBarButtonItems = buttons
        
        for _ in buttons {
            if barButtonColours.count <= buttons.count {barButtonColours.append(graySeven)} /// default colour, for the buttons that present all but the current vc
        }
        
        for button in buttons {
            
            guard let greyout = greyoutColour else {print("no greyout colour"); return}
            
            guard let index = buttons.firstIndex(of: button) else {print("error finding button index"); return}
            
            let defaultColour = barButtonColours[index]
            button.tintColor = defaultColour
            
            if index == greyoutButtonIndex {
                button.tintColor = greyout
            }
            
            if button == reloadButton {
                button.tintColor = .clear
            }
            
        }
    }
}

