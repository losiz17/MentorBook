//
//  ViewController.swift
//  MentorBook
//
//  Created by 吉川莉央 on 2018/06/06.
//  Copyright © 2018年 RioYoshikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLavel: UILabel!
    
    var mentorArray: [Mentor] = []
    var index:Int = 0
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLavel.text = mentorArray[index].course
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mentorArray.append(Mentor(name:"ウパー", imageName:"image1.png",course:"水/地面"))
        mentorArray.append(Mentor(name:"ヌオー", imageName:"image2.jpeg",course:"水/地面"))
        mentorArray.append(Mentor(name:"ピカチュウ", imageName:"image3.jpg",course:"電気"))
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func mae(_ sender: Any) {
        index = index - 1
        if index == -1{
            index = 3
        }
        setUI()
    }
    
    @IBAction func tugi(_ sender: Any) {
        index = index + 1
        if index == 3{
            index = 0
        }
        setUI()
    }
}

