//
//  detailsVC.swift
//  Simpson Book
//
//  Created by BB-MP on 15.02.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    // seçilen simpson objesi nasıl alınır?
    
    var selectedSimpson : Simpson?
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
    }
    


}
