// CellPath         ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let row = indexPath.item; let column = indexPath.section
        
        if column == 0 && row == 0 {   /// cell with text (and title label constraints) left-aligned
            return registerAndReturnLeftCell(collectionView, at: indexPath)
        }
        else if column == 0 && row > 0 {   /// cell with text (and title label constraints) right-aligned
            return registerAndReturnLeftCell(collectionView, at: indexPath)
        }
        else if column == 1 && row > 0 {   /// cell with text (and title label constraints) right-aligned
            return registerAndReturnRightCell(collectionView, at: indexPath)
        }
        else {
            return registerAndReturnCell(collectionView, at: indexPath)
        }
    }
    
    func doRestOfCellProcessing(cell: CustomCell, indexPath: IndexPath, row: Int, column: Int) -> CustomCell {
        let customLayout = downcastLayout!
        let headerRows = customLayout.lockedHeaderRows; let headerSections = customLayout.lockedHeaderSections
        
        /*if currentOrientation == "landscape" { /// only needed if vc has a lot of cells, and its cell dimensions are auto-fitted
         cell.titleLabel.font = UIFont.systemFont(ofSize: CGFloat(8), weight: .ultraLight)
         }*/
        
        if column < headerSections || row < headerRows {
            cell.backgroundColor = headerColour
        }  else {
            cell.backgroundColor = cellDefaultColour;  cell.cellColour = cellDefaultColour
            cell.titleLabel.text = "_" //"\(column),\(row)"
        }
        
        if column == 1 {
            cell.backgroundColor = headerColour; cell.titleLabel.text = ""
        }
        
        return cell
    }
    
    func doRestOfLeftCellProcessing(cell: LeftAlignedCell, indexPath: IndexPath, row: Int, column: Int) -> LeftAlignedCell  {
        cell.backgroundColor = headerColour
        cell.titleLabel.font = UIFont.systemFont(ofSize: 11, weight: .ultraLight)
        
        cell.titleLabel.textAlignment = .left
        cell.titleLabel.numberOfLines = 0
        cell.titleLabel.lineBreakMode = .byCharWrapping
        
        if column == 0 { /// to do this in column 1, you need to rewrite the layout attributes (zIndex)
            if row == 0 {cell.titleLabel.text = " Enter vehicle, license date, & insurance info (saved to your device only)"}
//            else {
//                if viewControllerType == .first {
//                    cell.titleLabel.text = insHotlineHeaderTitles[row]
//                    cell.titleLabel.font = headerFont
//                    cell.titleLabel.textColor = .black
//                }
//            }
        }
        
        return cell
    }
    
    func doRestOfRightCellProcessing(cell: RightAlignedCell, indexPath: IndexPath, row: Int, column: Int) -> RightAlignedCell  {
        cell.backgroundColor = headerColour
        cell.titleLabel.font = UIFont.systemFont(ofSize: 11, weight: .ultraLight)
        
        cell.titleLabel.textAlignment = .right
        cell.titleLabel.numberOfLines = 0
        cell.titleLabel.lineBreakMode = .byCharWrapping
        
        if column == 1 { /// to do this in column 1, you need to rewrite the layout attributes (zIndex)
            if row == 0 {
//                cell.titleLabel.text = " Enter vehicle, license date, & insurance info (saved to your device only)"
            }
            else {
                if viewControllerType == .first {
                    cell.titleLabel.text = insHotlineHeaderTitles[row]
                    cell.titleLabel.font = headerFont
                    cell.titleLabel.textColor = .black
                }
            }
        }
        
        return cell
    }
    
}

