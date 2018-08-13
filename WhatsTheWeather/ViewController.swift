//
//  ViewController.swift
//  WhatsTheWeather
//
//  Created by Swati Singh on 11/06/18.
//  Copyright © 2018 Swati Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var movieTextField: UIImageView!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    

    @IBAction func submitButtonTapped(_ sender: Any) {
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        // Detects the type of motions of the phone
        if event?.subtype == UIEventSubtype.motionShake {
            print("Device was shaken")
            
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // to swipe right
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        // The moment we have detected a swip, we wanna perform the swipe
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        // Right swipe
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        // The moment we have detected a swip, we wanna perform the swipe
        
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
    
        // Get the contents of the website to the console
        // Instead of wrapping the url in request , wrap the url instead.
        let url = URL( string: "https://www.imdb.com/movies-in-theaters/?ref_=nv_mv_inth_1")!
        let request = NSMutableURLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            
            data, respnose, error in
            
            if error != nil {
                print(error as Any)
            }else {
                
                if let unwrappedData = data {
                    
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    print(dataString as Any)
                }
                
                
            }
        }
        task.resume()
        
    }
    
    
    @objc func swiped(gesture : UIGestureRecognizer){
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.right :
                print("Swipped Right")
                
                
            case UISwipeGestureRecognizerDirection.left :
                print("Swipped Left")
                
            default :
                break
                
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

