//
//  ViewController.swift
//  CartA2
//
//  Created by Jakkawad Chaiplee on 3/19/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainProductList: UITableView!
    
    var mainDataArray = ["Dog", "Cat", "Mouse", "Cow", "Fox", "Bird", "Pig"]
    var Alert = UIAlertView()
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 10
        return self.mainDataArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCellWithIdentifier("tableCell1") as? CustomTableViewCell
        
        cell1?.lblTitle.text = self.mainDataArray[indexPath.item]
        
        return cell1!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Product is \(self.mainDataArray[indexPath.item])")
        Alert.title = "Add to Cart"
        Alert.message = "\(self.mainDataArray[indexPath.item])"
        Alert.addButtonWithTitle("OK")
        Alert.show()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

