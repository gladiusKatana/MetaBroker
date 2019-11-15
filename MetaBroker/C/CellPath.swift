// CellPath         ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.row == 0 && indexPath.section == 0 {   /// cell with text (and title label constraints) left-aligned
            return registerAndReturnLeftCell(collectionView, at: indexPath)
        }
        else {
            return registerAndReturnCell(collectionView, at: indexPath)
        }
    }
    
    func doRestOfCellProcessing(cell: CustomCell, indexPath: IndexPath) -> CustomCell {
        let customLayout = downcastLayout!
        let row = indexPath.item;                       let column = indexPath.section;
        let headerRows = customLayout.lockedHeaderRows; let headerSections = customLayout.lockedHeaderSections
        
        /*if currentOrientation == "landscape" { /// only needed if vc has a lot of cells, and its cell dimensions are auto-fitted
         cell.titleLabel.font = UIFont.systemFont(ofSize: CGFloat(8), weight: .ultraLight)
         }*/
        
        if column < headerSections || row < headerRows {
            cell.backgroundColor = headerColour
        }  else {
            cell.backgroundColor = cellDefaultColour;  cell.cellColour = cellDefaultColour
            cell.titleLabel.text = "\(column),\(row)"
        }
        
        return cell
    }
    
    func doRestOfLeftCellProcessing(cell: LeftAlignedCell, indexPath: IndexPath) -> LeftAlignedCell  {
        cell.backgroundColor = headerColour
        cell.titleLabel.font = UIFont.systemFont(ofSize: 8, weight: .ultraLight)
        
        /*if currentOrientation == "landscape" {cell.titleLabel.font = UIFont.systemFont(ofSize: CGFloat(7), weight: .ultraLight)}*/
        
        cell.titleLabel.textAlignment = .left
        cell.titleLabel.numberOfLines = 0
        cell.titleLabel.lineBreakMode = .byCharWrapping
        
        if indexPath.section == 0 { /// to do this in column 1, you need to rewrite the layout attributes (zIndex)
            cell.titleLabel.text = " (\(indexPath.section),\(indexPath.row)) This cell is left-aligned (& left-constrained), so its text can continue beyond its bounds"
        }
        
        return cell
    }
}

