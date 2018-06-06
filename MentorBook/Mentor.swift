//
//  Mentor.swift
//  MentorBook
//
//  Created by 吉川莉央 on 2018/06/06.
//  Copyright © 2018年 RioYoshikawa. All rights reserved.
//

import UIKit

class Mentor{
    var name: String!
    var course: String!
    var imageName: String!
    
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
