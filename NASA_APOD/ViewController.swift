//
//  ViewController.swift
//  NASA_APOD
//
//  Created by Simone Grant on 11/6/16.
//  Copyright © 2016 Simone Grant. All rights reserved.
//

import UIKit

internal typealias JSON = [String: Any]

class ViewController: UIViewController {
    
    @IBOutlet weak var imgOfDay: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet var imgPicker: UIDatePicker!
    
    var imgData = [ImageData]()
    //create array to NASA data
    var astroData = [JSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //declare json url
        let url = NSURL(string: "https://api.nasa.gov/planetary/apod?api_key=VXoDS5Q27BPWOTBWrg0NnklhVBJFfkVMZjztHt1g")
        //request url
        let request = NSMutableURLRequest(url: url as! URL)
        //execute request
        let session: URLSession = URLSession(configuration: URLSessionConfiguration.default)
        session.dataTask(with: request as URLRequest) { (data: Data?, response: URLResponse?, error: Error?) in
            if error != nil {
                print("Error encountered in API request: \(error?.localizedDescription)")
            }
            
            if data != nil {
                print("Data returned in response")
            }
        }.resume()
        
    }
    
    func parseJSON(_ data: Data) {
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? JSON
            
            //secure storage of JSON data
            guard let nasaJSON = json else {
                print("Parsing Error")
                return
            }
            
            astroData = [nasaJSON]
            print(nasaJSON)
            
            
        } catch {
            print("Caught an error: \(error)")
        }
        
    }
    
    @IBAction func pickerValueChanged(_ sender: AnyObject) {
        textLabel.text = "test"
        
        /* imageView
         let url = URL(string: "www")
         let data = try? Data(contentsOf: url)
         let imageFromURL = UIImage(data: data!)
 */
    }
}

