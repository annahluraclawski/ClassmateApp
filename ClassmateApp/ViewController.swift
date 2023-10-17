//
//  ViewController.swift
//  ClassmateApp
//
//  Created by ANNAHLU RACLAWSKI on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var students : [Student] = []
    
    var i = 0
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    
    @IBOutlet weak var hairColorOutlet: UILabel!
    
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let student1 = Student(name: "Gabi", hairColor: "Brown", rating: .fire)
        let student2 = Student(name: "Annahlu", hairColor: "Blonde", rating: .fire)
        let student3 = Student(name: "Avery", hairColor: "Ginger", rating: .fire)
        
        students.append(student1)
        students.append(student2)
        students.append(student3)
        students.append(Student(name: "Mr. Seaver", hairColor: "Brown", rating: .fire))
        students.append(Student(name: "Claire", hairColor: "Brown", rating: .fire))

        nameOutlet.text = students[0].name
        hairColorOutlet.text = students[0].hairColor
        //ratingOutlet.text = students[0].Rating.fire
        
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        i+=1
        nameOutlet.text = students[i].name
        hairColorOutlet.text = students[i].hairColor
        
    }
    
    
    @IBAction func previousButton(_ sender: UIButton) {
        i-=1
        nameOutlet.text = students[i].name
        hairColorOutlet.text = students[i].hairColor
    }
    
}

