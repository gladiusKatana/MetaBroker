// CellPath         ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension CollectionVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row = indexPath.item; let column = indexPath.section
        
        if column == 0 && row == 0 {        /// cell with text (and title label constraints) left-aligned
            return registerAndReturnLeftCell(collectionView, at: indexPath)
        }
        else if column == 1 && row > 0 {    /// cell with text (and title label constraints) right-aligned
            return registerAndReturnRightCell(collectionView, at: indexPath)
        }
        else {
            return registerAndReturnCell(collectionView, at: indexPath)
        }
    }
    
    func registerAndReturnCell(_ collectionView: UICollectionView, at indexPath: IndexPath) -> CustomCell {
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: CustomCell.reuseIdentifier)
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.reuseIdentifier, for: indexPath) as! CustomCell
        cell = setupCells(cell, row: indexPath.row, column: indexPath.section)
        return cell
    }
    
    func registerAndReturnLeftCell(_ collectionView: UICollectionView, at indexPath: IndexPath) -> LeftAlignedCell {
        collectionView.register(LeftAlignedCell.self, forCellWithReuseIdentifier: LeftAlignedCell.reuseIdentifier)
        
        var leftCell = collectionView.dequeueReusableCell(withReuseIdentifier: LeftAlignedCell.reuseIdentifier, for: indexPath) as! LeftAlignedCell
        leftCell = setupLeftCells(leftCell, row: indexPath.row, column: indexPath.section)
        return leftCell
    }
    
    func registerAndReturnRightCell(_ collectionView: UICollectionView, at indexPath: IndexPath) -> RightAlignedCell {
        collectionView.register(RightAlignedCell.self, forCellWithReuseIdentifier: RightAlignedCell.reuseIdentifier)
        
        var rightCell = collectionView.dequeueReusableCell(withReuseIdentifier: RightAlignedCell.reuseIdentifier, for: indexPath) as! RightAlignedCell
        rightCell = setupRightCells(rightCell, row: indexPath.row, column: indexPath.section)
        return rightCell
    }
}

