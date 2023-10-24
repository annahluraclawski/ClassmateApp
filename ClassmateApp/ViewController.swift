//
//  ViewController.swift
//  ClassmateApp
//
//  Created by ANNAHLU RACLAWSKI on 10/11/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var students : [Student] = []
    
    var i = 0
    
    @IBOutlet weak var nameOutlet: UILabel!
    
    
    @IBOutlet weak var hairColorOutlet: UILabel!
    
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    
    @IBOutlet weak var addNameOutlet: UITextField!
    
    
    @IBOutlet weak var addHairColorOutlet: UITextField!
    
    
    @IBOutlet weak var addRatingOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let student1 = Student(name: "Gabi", hairColor: "Brown", rating: .INSANE)
        let student2 = Student(name: "Annahlu", hairColor: "Blonde", rating: .fire)
        let student3 = Student(name: "Avery", hairColor: "Ginger", rating: .trash)
        
        addNameOutlet.delegate = self
        addHairColorOutlet.delegate = self
        addRatingOutlet.delegate = self
        
        students.append(student1)
        students.append(student2)
        students.append(student3)
        students.append(Student(name: "Mr. Seaver", hairColor: "Brown", rating: .fire))
        students.append(Student(name: "Claire", hairColor: "Brown", rating: .mid))

        nameOutlet.text = students[0].name
        hairColorOutlet.text = students[0].hairColor
        ratingOutlet.text = "\(students[0].rating)"
        
    }
    
    
    @IBAction func nextButton(_ sender: UIButton) {
        i+=1
        if i>students.count-1 {
            i = 0
        }
            nameOutlet.text = students[i].name
            hairColorOutlet.text = students[i].hairColor
            ratingOutlet.text = "\(students[i].rating)"
        
    }
    
    
    @IBAction func previousButton(_ sender: UIButton) {
        i-=1
        if i < 0 {
            i = students.count-1
        }
            nameOutlet.text = students[i].name
            hairColorOutlet.text = students[i].hairColor
            ratingOutlet.text = "\(students[i].rating)"
    }
    
    
    @IBAction func sortButton(_ sender: UIButton) {
        students.sort(by: {$0.name < $1.name})
    }
    
    @IBAction func addStudentButton(_ sender: UIButton) {
        
        let addName = addNameOutlet.text!
        
        let addHairColor = addHairColorOutlet.text!
        
        let addRating = addRatingOutlet.text!
        
        var rating : Rating!
    
        if addRating == "fire" {
            rating = .fire
        }
        else if addRating == "mid" {
            rating = .mid
        }
        else if addRating == "trash" {
            rating = .trash
        }
        else {
            rating = .fire
        }
        
        students.append(Student(name: addName, hairColor: addHairColor, rating: rating))
    }
    
}

