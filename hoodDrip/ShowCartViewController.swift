//
//  ShowCartViewController.swift
//  hoodDrip
//
//  Created by HGPMAC83 on 7/25/19.
//  Copyright © 2019 HGPMAC83. All rights reserved.
//

import UIKit

class ShowCartViewController: UIViewController {

    
    @IBOutlet weak var productDescriptionSummary: UILabel!
    @IBOutlet weak var productPriceSummary: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productDescriptionSummary.text
            = productDescription
        productPriceSummary.text = productPrice
        
    }

}
