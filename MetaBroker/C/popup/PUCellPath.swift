// PCellPath        ･   collection-view-boilerplate   ･     created by Garth Snyder   aka   gladiusKatana  ⚔️
import UIKit

extension PopupMenuVC {
    
    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.popupReuseIdentifier, for: indexPath) as! CustomCell
        let customLayout = downcastLayout!
        let row = indexPath.item
        
        //cell.titleLabel.text = "tap to dismiss"
        cell.titleLabel.text = "\(popupContents[row])"
        
        if row < customLayout.lockedHeaderRows
            //|| column < customLayout.lockedHeaderSections {           // our popup menu does not have header columns, if this is commented
        {
            cell.backgroundColor = popupMenuLightGray
            cell.titleLabel.font = UIFont.systemFont(ofSize: 12, weight: .thin)
        }
        else {
            cell.backgroundColor = .white
            cell.titleLabel.textColor = .black
        }
        
        return cell
    }
}

