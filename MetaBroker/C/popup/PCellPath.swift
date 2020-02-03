// PCellPath        ･   MetaBroker   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension PopupMenuVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.popupReuseIdentifier, for: indexPath) as! CustomCell
        
        let row = indexPath.item
        
        //let customLayout = downcastLayout!
        
        cell.titleLabel.text = "\(popupContents[row])" //"tap to dismiss"
        
//        if row < customLayout.lockedHeaderRows // our popup menu does not have headers, if this is commented
//            //|| column < customLayout.lockedHeaderSections {
//        {
//            cell.backgroundColor = headerColour
//            cell.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
//        }
//        else {
            cell.backgroundColor = popupMenuCellColour
            cell.titleLabel.textColor = .black
//        }
        
        return cell
    }
}

