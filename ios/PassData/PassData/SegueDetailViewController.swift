//
//  SegueDetailViewController.swift
//  PassData
//
//  Created by 김택현 on 2022/02/22.
//

import UIKit

class SegueDetailViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    var dataString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataLabel.text = dataString

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
