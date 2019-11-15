// Vars             ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

var globalWindow = UIWindow(frame: UIScreen.main.bounds)

var navController: UINavigationController? = UINavigationController()

var timerToShowScrollIndicator: Timer?


var xOffSet = CGFloat(0);                       var yOffset = CGFloat(0)

var statusBarHeight = 0.0;                      var lastStatusBarHeight = 0.0

var navBarHeight = 0.0;                         var launchWidth = 0.0


var showConsoleLegend = true


var defaultFont = UIFont.systemFont(ofSize: 12, weight: .ultraLight)
var headerFont = UIFont.systemFont(ofSize: 12, weight: .regular)


var currentOrientation = "orientation (landscape or portrait) for prepare-layout logic"
var previousOrientation = "previous orientation (landscape or portrait) for prepare-layout logic"
var launchOrientation = "orientation at the moment of launch"

//var appearSymbolLegend = "                                        🏞 = view appeared"  // console legend
var loadSymbolLegend = "                                        💾 = view loaded"

var modelName = "device you're running on"

//var phones = ["iPhone4", "iPhone 4s", "iPhone 5", "iPhone 5c", "iPhone 5s", "iPhone 6", "iPhone 6 Plus", "iPhone 6s", "iPhone 6s Plus", "iPhone 7", "iPhone 7 Plus", "iPhone SE", "iPhone 8", "iPhone 8 Plus", "iPhone X", "iPhone XS", "iPhone XS Max", "iPhone XR"]

