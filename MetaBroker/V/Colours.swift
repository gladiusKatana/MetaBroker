// Colours          ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit


extension UIColor {
    static func rgb(_ r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}


var testSquareColours = /// see TestSquare.swift
    [UIColor.red.cgColor, UIColor.orange.cgColor, UIColor.green.cgColor, UIColor.blue.cgColor, UIColor.purple.cgColor, UIColor.black.cgColor]



var defaultBackgroundColour = platinum


var headerColour = platinum

var cellDefaultColour = grayOne //UIColor.lightGray


var cellTextDefaultColour = UIColor.black



var popupMenuCellColour = UIColor.darkGray          //; var iosSettingsGray = UIColor.rgb(240, g: 240, b: 247, a: 1)

var grayOne = UIColor.rgb(0, g: 0, b: 0, a: 0.1)    ; var grayTwo = UIColor.rgb(0, g: 0, b: 0, a: 0.2)
var graySeven = UIColor.rgb(0, g: 0, b: 0, a: 0.7)


var platinum = UIColor.rgb(214, g: 214, b: 214, a: 1)


var lightNavy = UIColor.rgb(0, g: 56, b: 116, a: 0.75)

