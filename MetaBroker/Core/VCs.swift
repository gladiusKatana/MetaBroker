// VCs              ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

var backgroundVC = UIViewController()

var topVC = CollectionVC(viewControllerType: .initial, backgroundColour: UIColor.clear,
                         greyoutButtonIndex: nil, collectionViewLayout: insHotlineLayout)

var cellGap = CGFloat(0) /// if nonzero, do not make this smaller than: 0.5 (iphone7), or lines drawn inconsistently


var insHotlineLayout =
    CustomFlowLayout(
        embeddedInNavController: true,          ///  if true, it's fullscreen (with a nav bar button to navigate to its collection view controller's view); else it's a window with a custom frame
        customFrame: nil,                       ///  if nil, defaults to a pre-set frame, the app's window frame (as described in above comment)
        rows: 30, cols: 6,
        lockedHeaderRows: 1, lockedHeaderSections: 0,
        cellWidth: 110, cellHeight: 40,                 ///  if either parameter is nil, screen width and/or height is autofitted (else, auto-fit scalars below are ignored, ie set to 1.0)
        autoFitWidthScale: 1, autoFitHeightScale: 1,    ///  if either of these parameters are nil, they default to 1.0
        hSpace: cellGap, vSpace: cellGap,               ///  gaps between the cells
        loadsHorizontally: false,               ///❗️if loadsHorizontally is true, 'rows' look like columns
        squareCellMode: .noAutoSquare)          /// allows cells to be square, with the height set from the width, or vice versa (if the secondary dimension is set above, it's overridden)

var insHotlineVC = CollectionVC(viewControllerType: .first, backgroundColour: defaultBackgroundColour,
                           greyoutButtonIndex: 1, collectionViewLayout: insHotlineLayout)


var kanetixLayout =
    CustomFlowLayout(
        embeddedInNavController: true,
        customFrame: nil,                       /// can be nil or globalWindow.frame, same effect if embedded-in-nav-controller = true
        rows: 30, cols: 5,
        lockedHeaderRows: 2, lockedHeaderSections: 1,
        cellWidth: nil, cellHeight: 40,
        autoFitWidthScale: 1, autoFitHeightScale: 1,
        hSpace: cellGap, vSpace: cellGap,
        loadsHorizontally: false,
        squareCellMode: .noAutoSquare)

var kanetixVC = CollectionVC(viewControllerType: .second, backgroundColour: defaultBackgroundColour,
                            greyoutButtonIndex: 0, collectionViewLayout: kanetixLayout)


var popupMenuLayout =
    CustomFlowLayout(
        embeddedInNavController: false,
        customFrame: nil,
        rows: 10, cols: 1, lockedHeaderRows: 1, lockedHeaderSections: 0,
        cellWidth: 0, cellHeight: 0,            /// these get reset anyway (based on first view controller cell sizes), when the view controller with this layout gets presented
        autoFitWidthScale: nil, autoFitHeightScale: nil,
        hSpace: cellGap, vSpace: cellGap,
        loadsHorizontally: false,
        squareCellMode: .noAutoSquare)

var popupMenuViewController = PopupMenuVC(collectionViewLayout: popupMenuLayout)

let zeroFrame = CGRect(x: 0, y: 0, width: 0, height: 0) /// Initial value for initialization / default / testing

