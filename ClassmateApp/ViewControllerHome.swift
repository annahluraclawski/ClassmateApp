//
//  ViewControllerHome.swift
//  ClassmateApp
//
//  Created by ANNAHLU RACLAWSKI on 10/24/23.
//

import UIKit

class ViewControllerHome: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController
    }

    @IBAction func homeButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toList", sender: self)
    }
    
    @IBAction func quizButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toQuiz", sender: self)
    }
    
}
