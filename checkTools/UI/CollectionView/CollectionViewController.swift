//
//  CollectionViewController.swift
//  checkTools
//
//  Created by Markel Juaristi on 12/1/23.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    let customRows = [
        CustomItem(image: UIImage(systemName: "pencil.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "trash.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "folder.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "paperplane.circle")!, text: "lunes"),
        CustomItem(image: UIImage(systemName: "doc.circle")!, text: "vierbnes"),
        CustomItem(image: UIImage(systemName: "terminal")!, text: "sabado"),
        CustomItem(image: UIImage(systemName: "book.closed")!, text: "domingo")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        let xib = UINib(nibName: "CollectionCell", bundle: nil)
        collectionView.register(xib, forCellWithReuseIdentifier:"customCollectionCell")

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return customRows.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCollectionCell", for: indexPath) as! CollectionCell
        let customItem = customRows[indexPath.row]
        cell.iconImageView.image = customItem.image
        cell.titleLabel.text = customItem.text
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsInRow: CGFloat = 2
        let spacing: CGFloat = 12
        let totalspacing:  CGFloat = (itemsInRow - 1) * spacing
        let finalWidth = (collectionView.frame.width - totalspacing) / itemsInRow
        
        /* el espacio entre filas se configura en el collectionview 'Min spacing'en for lines(segundo icono por la derecha)*/
        
        return CGSize(width: finalWidth, height: 100)
    }
   
}
