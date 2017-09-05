//
//  DViewController.swift
//  StateRestorationTest
//
//  Created by Nofel Mahmood on 05/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

class DViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = name
        navigationItem.title = name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
