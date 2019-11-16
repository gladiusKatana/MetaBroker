// CellSetup        ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    func setupCells(_ cell: CustomCell, row: Int, column: Int) -> CustomCell {
        let customLayout = downcastLayout!
        let headerRows = customLayout.lockedHeaderRows; let headerSections = customLayout.lockedHeaderSections
        
        if column < headerSections || row < headerRows {
            cell.backgroundColor = headerColour
        }  else {
            cell.backgroundColor = cellDefaultColour;  cell.cellColour = cellDefaultColour
            cell.titleLabel.text = "_" //"\(column),\(row)"
        }
        
        if column == 0 {    /// a bit of an exception from the typical boilerplate from  https://github.com/gladiusKatana/collection-view-boilerplate
            cell.backgroundColor = headerColour; cell.titleLabel.text = ""
        }
        
        return cell
    }
    
    func setupLeftCells(_ cell: LeftAlignedCell, row: Int, column: Int) -> LeftAlignedCell  {
        setupTitleCells(cell, row: row, column: column)
        cell.titleLabel.text = " Enter vehicle, license date, & coverage info (saved to iPhone only)"
        
        return cell
    }
    
    func setupRightCells(_ cell: RightAlignedCell, row: Int, column: Int) -> RightAlignedCell  {
        setupTitleCells(cell, row: row, column: column)
        
        if viewControllerType == .first {
            cell.titleLabel.text = insHotlineHeaderTitles[row]
        }
        
        return cell
    }
    
    func setupTitleCells(_ cell: BaseCell, row: Int, column: Int) {
        cell.backgroundColor = headerColour
        
        cell.titleLabel.textAlignment = .left
        cell.titleLabel.numberOfLines = 0
        cell.titleLabel.lineBreakMode = .byCharWrapping
        
        cell.titleLabel.font = headerFont
        cell.titleLabel.textColor = .black
    }
    
}

