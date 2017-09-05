//
//  ViewController.swift
//  StateRestorationTest
//
//  Created by Nofel Mahmood on 05/09/2017.
//  Copyright © 2017 nineish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let names = ["Islamabad", "Lahore", "Faisalabad", "Karachi", "Quetta", "Multan"]
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Show" {
            let dViewController = segue.destination as! DViewController
            let name = names[tableView.indexPathForSelectedRow!.row]
            dViewController.name = name
        }
    }

}

extension ViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        let name = names[indexPath.row]
        cell.nameLabel.text = name
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "Show", sender: nil)
    }
}
