//
//  ImagesViewController.swift
//  HomeWork_2.4
//
//  Created by Kaznacheev on 22.11.2021.
//

import UIKit

class ImgViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    private let user: User! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = UIImage(named: "Kaznacheev")
    }

}
