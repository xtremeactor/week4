//
//  ViewController.swift
//  SpaceApp
//
//  Created by Jason Buchel on 11/4/16.
//  Copyright © 2016 TheAustinSpace. All rights reserved.
//

import UIKit
import Alamofire

var Array1 = [String]()
var Array2 = [String]()
var Array3 = [String]()

class ViewController: UIViewController {
    
    /*
     
    @IBOutlet var viewChoice: UISegmentedControl!
    
    @IBOutlet var frontView: UIView!

  
    @IBAction func chosenView(_ sender: UISegmentedControl) {
        let choice = viewChoice.titleForSegment(at: viewChoice.selectedSegmentIndex)!
        if choice == "FHAZ"{
        frontView.isHidden = false
    }
        
}
        
    */
    
    @IBAction func loadFront(_ sender: AnyObject) {
        Alamofire.request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=999&camera=FHAZ&api_key=ok6qDFliNO1mXqXxQbz9aUQ3toPObTDcEjw7xHkX", method: .get).responseJSON { response in
            
            let data = response.result.value as! NSDictionary
            
            let mainData = data.object(forKey: "photos") as! NSArray
            
            
            for i in 0..<mainData.count{
                let dict = mainData[i] as! NSDictionary
                let picture = dict.object(forKey: "img_src") as! String
                Array1.append(picture)
                
                
            }
        }
    }
    
    
    @IBAction func loadMast(_ sender: AnyObject) {
        
        Alamofire.request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=999&camera=MAST&api_key=ok6qDFliNO1mXqXxQbz9aUQ3toPObTDcEjw7xHkX", method: .get).responseJSON { response in
            
            let data = response.result.value as! NSDictionary
            
            let mainData = data.object(forKey: "photos") as! NSArray
            
            
            for i in 0..<mainData.count{
                let dict = mainData[i] as! NSDictionary
                let picture = dict.object(forKey: "img_src") as! String
                Array2.append(picture)
                
                
            }
        }
    }
    
   
    @IBAction func loadRear(_ sender: AnyObject) {
        Alamofire.request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=999&camera=RHAZ&api_key=ok6qDFliNO1mXqXxQbz9aUQ3toPObTDcEjw7xHkX", method: .get).responseJSON { response in
            
            let data = response.result.value as! NSDictionary
            
            let mainData = data.object(forKey: "photos") as! NSArray
            
            
            for i in 0..<mainData.count{
                let dict = mainData[i] as! NSDictionary
                let picture = dict.object(forKey: "img_src") as! String
                Array3.append(picture)
                
                
            }
        }
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    override func viewDidAppear(_ animated: Bool) {
        
        }

}
