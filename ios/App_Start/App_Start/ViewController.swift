//
//  ViewController.swift
//  App_Start
//
//  Created by 김택현 on 2022/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    
    @IBAction func onClick(_ sender: Any) {
        testButton.backgroundColor = .orange
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(identifier: "DetailVC") as DetailVC
        
        self.present(detailVC, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testButton.backgroundColor
        = UIColor.red
    }


}

