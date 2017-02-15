//
//  CollagesClass.swift
//  collageProfileBuilder
//
//  Created by Hussain Haq  on 2/8/17.
//  Copyright © 2017 Hussain Haq . All rights reserved.
//

import UIKit

class CollagesClass: NSObject
    {
    var name = ""
    var state = ""
    var numberOfPeople = ""
    var image = UIImageView()
    
    init(Name:String, State:String, NOP:String, Image:UIImageView)
    {
        name = Name
        state = State
        numberOfPeople = NOP
        image = Image
    }
    
    init(Name:String, State:String) {
        name = Name
        state = State
    }
}

