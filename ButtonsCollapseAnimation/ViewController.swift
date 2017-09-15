//
//  ViewController.swift
//  ButtonsCollapseAnimation
//
//  Created by Appinventiv Technologies on 14/09/17.
//  Copyright © 2017 Appinventiv Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var superView: UIView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var btn: UIButton!
   
    @IBOutlet weak var btnView: UIView!
    
      var superframe:CGRect?
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
     
            superframe = superView.frame
        
        
  
        
        
       // self.mainView.layer.cornerRadius = self.mainView.frame.size.width/2
         self.btnView.layer.cornerRadius = self.btnView.frame.size.width/2
        self.btn.layer.cornerRadius = self.btn.frame.size.width/2
        
        
    }

    
    
    
    
    
    @IBAction func btnViewAction(_ sender: UIButton) {
        
        UIView.animate(withDuration: 1, delay: 0.2,
                       options:[.curveEaseInOut],
                       
                       
                       
                       animations: {
                        
                        if self.mainView.transform == CGAffineTransform.identity{
                            self.mainView.transform = CGAffineTransform(scaleX:1,y:8)
        self.btnView.transform = CGAffineTransform(translationX:0, y: (self.superframe?.size.height)!/2)
            self.btn.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
                        }
                        
                        else
                        {
                            self.mainView.transform = .identity
                            self.btnView.transform = .identity
                            self.btn.transform = .identity
                            
                        }
                            
        }) {(true) in
            
            
            self.toggleButton()
        
        }
            
        
            
       
        
    }
    
    
func toggleButton()
{
    
    UIView.animate(withDuration: 0.2, delay: 0.7,
                   
                  
                   animations:{
                      
                    
                    
    }, completion: nil)
    
    }
}
        






