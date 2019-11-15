// Layout           ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

class CustomFlowLayout : UICollectionViewFlowLayout {
    
    var customFrame: CGRect?
    var rows = 0;                           var cols = 0
    var lockedHeaderRows = 0;               var lockedHeaderSections = 0
    
    var cellWidth: CGFloat?;                var cellHeight: CGFloat?
    var autoFitWidthScale: CGFloat?;        var autoFitHeightScale: CGFloat?
    var hSpace = CGFloat(0);                var vSpace = CGFloat(0)
    var widthPlusSpace = CGFloat(0);        var heightPlusSpace = CGFloat(0)
    
    var cellDimensionsMode = CellDimensionsMode.neitherHardcoded
    var squareCellMode : SquareCellMode
    var embeddedInNavController = false;    var loadsHorizontally = false
    
    init(embeddedInNavController: Bool, customFrame: CGRect?,
         rows: Int, cols: Int,
         lockedHeaderRows: Int, lockedHeaderSections: Int,
         cellWidth: CGFloat?, cellHeight: CGFloat?,
         autoFitWidthScale: CGFloat?, autoFitHeightScale: CGFloat?,
         hSpace: CGFloat, vSpace: CGFloat, loadsHorizontally: Bool, squareCellMode: SquareCellMode) {
        
        self.embeddedInNavController = embeddedInNavController
        self.customFrame = customFrame
        
        if !loadsHorizontally {self.rows = rows; self.cols = cols}
        else {                 self.rows = cols; self.cols = rows}
        
        self.lockedHeaderRows = lockedHeaderRows;   self.lockedHeaderSections = lockedHeaderSections
        self.cellWidth = cellWidth;                 self.cellHeight = cellHeight
        self.autoFitHeightScale = (autoFitHeightScale != nil) ? autoFitHeightScale : 1
        self.autoFitWidthScale = (autoFitWidthScale != nil) ? autoFitWidthScale : 1
        
        self.hSpace = hSpace;                       self.vSpace = vSpace
        self.loadsHorizontally = loadsHorizontally; self.squareCellMode = squareCellMode
        super.init()
        
        if cellWidth != nil && cellHeight != nil        {cellDimensionsMode = .widthAndHeightHardcoded}
            
        else if cellWidth == nil && cellHeight != nil   {cellDimensionsMode = .heightHardcoded}
            
        else if cellWidth != nil && cellHeight == nil   {cellDimensionsMode = .widthHardcoded}
            
        else    {cellDimensionsMode = .neitherHardcoded}                                        //print(cellDimensionsMode.simpleDescription())
    }
    
    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {return true}
    override func invalidateLayout() {super.invalidateLayout()}
}

