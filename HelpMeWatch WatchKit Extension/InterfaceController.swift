//
//  InterfaceController.swift
//  HelpMeWatch WatchKit Extension
//
//  Created by Ikusmen UX on 22/09/22.
//

import WatchKit
import Alamofire

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var imgProfile: WKInterfaceImage!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        
        // This method is called when watch view controller is about to be visible to user
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBAction func PressAlert() {
        
           AF.request("https://helpmeserve.herokuapp.com/api/firestore/helpmewatch", method: .post, encoding: JSONEncoding.default) { urlRequest in
                urlRequest.timeoutInterval = 1000
                if #available(iOS 13.0, *) {
                    urlRequest.allowsConstrainedNetworkAccess = false
                } else {
                    // Fallback on earlier versions
                }
            }.responseJSON { response in
                print("response", response)
                print(response.result)
            }
        
        print("presion Test")
        
    }
    

}
