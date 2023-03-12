//
//  ViewController.swift
//  collectionviewnetflix
//
//  Created by R83 on 12/03/23.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var collectionv: UICollectionView!
    var arrayForPoster = [4,5,6,7,1,2,3]
    var arrayForPoster2 = [11,12,13,14,15,16]
    var arrayForPoster3 = [21,22,23,24,25,26]
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .black
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionv {
            return arrayForPoster.count
        }
        else if collectionView == self.cv2{
            return arrayForPoster2.count
        }
        else{
            return arrayForPoster3.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionv{
            let cell = collectionv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            cell.imageview.image = UIImage(named: "\(arrayForPoster[indexPath.row])")
            return cell
        }
        else if collectionView == self.cv2{
            let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.imgview2.image = UIImage(named: "\(arrayForPoster2[indexPath.row])")
            return cell2
        }
        else {
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.imgview3.image = UIImage(named: "\(arrayForPoster3[indexPath.row])")
            
            return cell3
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: 110, height: 250)
    }


}

