//
//  SecondViewController.swift
//  TableView_Demo2
//
//  Created by Mac on 27/12/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var labelOne: UILabel!
    
    @IBOutlet var LabelTwo: UILabel!
    
    @IBOutlet var imageView: UIImageView!
    
    var strlabelOne : String?
    var strlabelTwo : String?
    var selectedImage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = strlabelOne
        LabelTwo.text = strlabelTwo
        imageView.image = selectedImage

    }
    

  

}
