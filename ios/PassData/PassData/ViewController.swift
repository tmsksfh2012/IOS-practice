//
//  ViewController.swift
//  PassData
//
//  Created by 김택현 on 2022/02/22.
//

// Passing Data (데이터를 넘겨주는 방법)
// 6가지 방법

// 1. instance property
// 2. segue
// 3. instance

import UIKit

class ViewController: UIViewController {
    

    @IBAction func moveToDetail(_ sender: Any) {
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detailVC.someString = "aaa"
        
        self.present(detailVC, animated: true, completion: nil)
        
//        detailVC.someLabel.text = "bb"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var dataLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDetail" {
            if let detailVC = segue.destination as? SegueDetailViewController {
                detailVC.dataString = "abcd"
            }
        }
    }

}

