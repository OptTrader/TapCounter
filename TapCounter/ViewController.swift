//
//  ViewController.swift
//  TapCounter
//
//  Created by Chris Kong on 1/24/16.
//  Copyright © 2016 Chris Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
  // MARK: Outlets
  
  @IBOutlet weak var counterLabel: UILabel!
  
  // MARK: Properties
  
  var count = 0
  
  // MARK: View Controller's Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupView()
  }
  
  // MARK: Setup View
  
  func setupView()
  {
    // Change navigation bar's appearance
    let nav = self.navigationController?.navigationBar
    nav?.translucent = true
    nav?.shadowImage = UIImage()
    nav?.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
    if let barFont = UIFont(name: "Avenir-Light", size: 20.0)
    {
      nav?.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.blackColor(), NSFontAttributeName: barFont]
    }
    nav?.tintColor = UIColor.blueColor()
  }
  
  // MARK: Methods
  
  @IBAction func tapButtonPressed(sender: UIButton)
  {
    count++
    counterLabel.text = "\(count)"
  }
  
  @IBAction func longPressed(sender: UILongPressGestureRecognizer)
  {
    count++
    counterLabel.text = "\(count)"
  }
  
  @IBAction func resetButtonPressed(sender: UIBarButtonItem)
  {
    count = 0
    counterLabel.text = "\(count)"
  }
  
}