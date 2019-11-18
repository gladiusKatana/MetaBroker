// Vars             ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

var globalWindow = UIWindow(frame: UIScreen.main.bounds)

var navController: UINavigationController? = UINavigationController()

var timerToShowScrollIndicator: Timer?


var xOffSet = CGFloat(0);                       var yOffset = CGFloat(0)

var statusBarHeight = 0.0;                      var lastStatusBarHeight = 0.0

var navBarHeight = 0.0;                         var launchWidth = 0.0


var showConsoleLegend = true


var defaultFont = UIFont.systemFont(ofSize: 12, weight: .light)
var headerFont = UIFont.systemFont(ofSize: 12, weight: .regular)


var currentOrientation = "orientation (landscape or portrait) for prepare-layout logic"
var previousOrientation = "previous orientation (landscape or portrait) for prepare-layout logic"
var launchOrientation = "orientation at the moment of launch"

//var appearSymbolLegend = "                                        🏞 = view appeared"  // console legend
var loadSymbolLegend = "                                        💾 = view loaded"

var modelName = "device you're running on"

