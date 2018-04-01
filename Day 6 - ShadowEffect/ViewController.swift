//
//  ViewController.swift
//  Day 6 - ShadowEffect
//
//  Created by Prashant Gaikwad on 4/1/18.
//  Copyright © 2018 Left Right Mind. All rights reserved.
//


/*
Shadow properties :

shadowColor : set the color of the shadow. Needed to the CGColor.

shadowOpacity: set the opacity 0 to 1 for transparent the shadow.

shadowOffset : its give the 3D offset effect of view.

shadowRadius : it's set for how wide the shadow should be.
*/
import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var myView: UIView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    myView.layer.shadowColor = UIColor.red.cgColor
    myView.layer.shadowOpacity = 1
    myView.layer.shadowOffset = CGSize.zero
    myView.layer.shadowRadius = 25
    
    
    let viewShadow = UIView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
    viewShadow.center = self.view.center
    viewShadow.backgroundColor = UIColor.yellow
    viewShadow.layer.shadowColor = UIColor.red.cgColor
    viewShadow.layer.shadowOpacity = 1
    viewShadow.layer.shadowOffset = CGSize.zero
    viewShadow.layer.shadowRadius = 50
    self.view.addSubview(viewShadow)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

