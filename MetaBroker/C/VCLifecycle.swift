// VCLifecycle      ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = backgroundColour
        collectionView.bounces = false
        
        setTopViewController()
        
        let str = (showConsoleLegend) ? loadSymbolLegend : ""       ; print("\n💾\(topVC.viewControllerType)\(str)") /// disk emoji = loaded 💾
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setNavBarTitle(customString: nil)
        setupNavBarButtons(grayTwo, greyoutButtonIndex: greyoutButtonIndex)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        setTopViewController()
        
        //if !showLoadAndAppearIndicationInConsole { /// if the below print hasn't been done already for this vc
        //let str = (showConsoleLegend) ? appearSymbolLegend : ""; print("🏞\(topVC.viewControllerType)\(str)") /// picture-emoji = appeared 🏞
        //showLoadAndAppearIndicationInConsole = true
        
        if showConsoleLegend {showConsoleLegend = false}        /// legend only needs to be shown once
        
        //}
        
        //drawTestSquare() /// for testing purposes only: to verify dynamic calculation of navbar & status bar heights, on which cell heights depend when autofitting is enabled
        
    }
    
}

