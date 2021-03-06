//
//  ViewController.swift
//  SlideViewLessonApp
//
//  Created by UrataHiroki on 2021/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showButton: UIButton!
    
    var intervalArray = [0.25, 0.50, 0.75, 1.00]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        showButton.layer.cornerRadius = 50.0
        
    }
    
    
    @IBAction func show(_ sender: UIButton) {
        
        createUpButton()
        
        for time in intervalArray{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + time) { [self] in
                
                if time == 0.25{
                    
                    createUnderButton()
                    
                }else if time == 0.50{
                    
                    createRightButton()
                    
                }else if time == 0.75{
                    
                    createLeftButton()
                    
                }else if time == 1.00{
                    
                    sender.isHidden = true
                    
                }
                
            }
            
        }
        
    }
    
    func createUpButton(){
        
        let upButton = UIButton(frame: CGRect(x: showButton.frame.minX, y: showButton.frame.minY - (showButton.frame.size.height + 10), width: showButton.frame.size.width, height: showButton.frame.size.height))
        
        upButton.backgroundColor = UIColor.systemGreen
        
        upButton.layer.cornerRadius = 50.0
        
        self.view.addSubview(upButton)
        
    }
    
    func createUnderButton(){
        
        let underButton = UIButton(frame: CGRect(x: showButton.frame.minX, y: showButton.frame.minY + (showButton.frame.size.height + 10), width: showButton.frame.size.width, height: showButton.frame.size.height))
     
        underButton.backgroundColor = UIColor.systemGreen
        
        underButton.layer.cornerRadius = 50.0
        
        self.view.addSubview(underButton)
        
    }
    
    func createRightButton(){
        
        let rightButton = UIButton(frame: CGRect(x: showButton.frame.minX + (showButton.frame.size.width + 10), y: showButton.frame.minY, width: showButton.frame.size.width, height: showButton.frame.size.height))
        
        rightButton.backgroundColor = UIColor.systemGreen
        
        rightButton.layer.cornerRadius = 50.0
        
        self.view.addSubview(rightButton)
        
    }
    
    func createLeftButton(){
        
        let leftButton = UIButton(frame: CGRect(x: showButton.frame.minX - (showButton.frame.size.width + 10), y: showButton.frame.minY, width: showButton.frame.size.width, height: showButton.frame.size.height))
        
        leftButton.backgroundColor = UIColor.systemGreen
        
        leftButton.layer.cornerRadius = 50.0
        
        self.view.addSubview(leftButton)
        
    }
    
}

