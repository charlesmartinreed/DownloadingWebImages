//
//  ViewController.swift
//  DownloadingWebImages
//
//  Created by Charles Martin Reed on 9/20/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bachImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pulling the image from local
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        
        if documentsPath.count > 0 {
            let documentsDirectory = documentsPath[0]
            
            let restorePath = documentsDirectory + "/bach.jpg"
            
            bachImageView.image = UIImage(contentsOfFile: restorePath)
        }
        
        /*
        //begin by defining a URL
        guard let url = URL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Johann_Sebastian_Bach.jpg/260px-Johann_Sebastian_Bach.jpg") else { return }
        
        //make a request
        let request = NSMutableURLRequest(url: url)
        
        //create the task
        //the dataTask is used to retreive the contents of a URL
        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data, response, error) in
            if error != nil {
                print(error ?? "Could not retrieve data")
            } else {
                //check for the data - first by optionally unwrapping it
                if let data = data {
                    
                    if let bachImage = UIImage(data: data) {
                        
                        //if we've made it this far, we're able to display our image
                        DispatchQueue.main.async {
                            self.bachImageView.image = bachImage
                        }
                        
                        //next we want to save the image locally
                        //expand tilde means that we get the full path to the home directory, rather than the ~ used in finder as shorthand for the longer path
                        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
                        
                        if documentsPath.count > 0 {
                            //grab the first path
                            let documentsDirectory = documentsPath[0]
                                
                            //attempt to create a save path
                            let savePath = documentsDirectory + "/bach.jpg"
                            
                            //try to save the image
                            //this replaces UIImageJPEGRepresentation
                            let imageData = bachImage.jpegData(compressionQuality: 1)
                            
                            do {
                                try imageData?.write(to: URL(fileURLWithPath: savePath))
                            } catch {
                                print("Could not save image")
                            }
                                
                            
                        }
                        
                    }

                }
            }
        }
        
        //run the task
        task.resume()
 */
    }

}

