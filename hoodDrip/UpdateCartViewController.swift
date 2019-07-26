//
//  UpdateCartViewController.swift
//  hoodDrip
//
//  Created by HGPMAC83 on 7/22/19.
//  Copyright © 2019 HGPMAC83. All rights reserved.
//

import UIKit

var productName = ""
var productDescription = ""
var productPrice = ""

class UpdateCartViewController: UIViewController {
    @IBAction func AddCart(_ sender: UIButton) {
        ShowCartButton.isHidden = false
    }

    @IBOutlet weak var ShowCartButton: UIButton!
    
    @IBOutlet weak var productPriceLabel: UILabel!

    
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        productPrice = productPriceLabel.text!
        productDescription = productDescriptionLabel.text!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
  
}

   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


