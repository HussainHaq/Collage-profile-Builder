//
//  detailViewController.swift
//  collageProfileBuilder
//
//  Created by Hussain Haq  on 2/9/17.
//  Copyright © 2017 Hussain Haq . All rights reserved.
//

import UIKit



class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    
    var collageDetail:CollagesClass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = collageDetail.image
        textField1.text = collageDetail.name
        textField2.text = collageDetail.state
        textField3.text = collageDetail.numberOfPeople
        
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func saveButton(_ sender: Any) {
        collageDetail.image = imageView.image
        collageDetail.name = textField1.text!
        collageDetail.state = textField2.text!
        collageDetail.numberOfPeople = textField3.text!
    }
    

}
